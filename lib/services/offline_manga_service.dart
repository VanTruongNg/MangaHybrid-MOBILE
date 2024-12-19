import 'dart:convert';
import 'dart:io';
import 'package:archive/archive.dart';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:webtoon_mobile/models/offline/offline_manga.model.dart';
import 'package:webtoon_mobile/models/offline/offline_chapter.model.dart';

class OfflineMangaService {
  final Dio dio;

  OfflineMangaService({required this.dio});

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return '${directory.path}/offline_manga';
  }

  Future<bool> isMangaDownloaded(String mangaId) async {
    final basePath = await _localPath;
    final mangaPath = '$basePath/$mangaId';
    return Directory(mangaPath).exists();
  }

  Future<void> downloadChapter(String mangaId, String chapterId,
      {Function(double)? onProgress}) async {
    try {
      if (!await isMangaDownloaded(mangaId)) {
        await downloadMangaInfo(mangaId);
      }

      final response = await dio.get(
        'chapters/$chapterId/download',
        options: Options(responseType: ResponseType.bytes),
        onReceiveProgress: (received, total) {
          if (total != -1) {
            final progress = received / total;
            onProgress?.call(progress);
          }
        },
      );

      if (response.data == null) {
        throw Exception('Không có dữ liệu chapter');
      }

      final basePath = await _localPath;
      final mangaPath = '$basePath/$mangaId';
      final chapterPath = '$mangaPath/chapters/$chapterId';

      await Directory(chapterPath).create(recursive: true);
      await Directory('$chapterPath/pages').create(recursive: true);

      final archive = ZipDecoder().decodeBytes(response.data);

      final metadataFile = archive.findFile('metadata.json');
      if (metadataFile != null) {
        final metadataContent = String.fromCharCodes(metadataFile.content);
        final jsonData = json.decode(metadataContent);

        final metadata = {
          '_id': jsonData['id'],
          'mangaId': jsonData['mangaId']['_id'],
          'number': jsonData['number'],
          'title': jsonData['title'] ?? '',
          'type': jsonData['type'] ?? 'normal',
          'totalPages': jsonData['totalPages'],
          'pagePaths': List<String>.generate(
            jsonData['totalPages'],
            (i) => 'pages/${(i + 1).toString().padLeft(3, '0')}.jpg',
          ),
        };

        await File('$chapterPath/metadata.json')
            .writeAsString(json.encode(metadata));

        for (final file in archive) {
          if (file.isFile && file.name.startsWith('pages/')) {
            final data = file.content as List<int>;
            final path = '$chapterPath/${file.name}';
            await File(path).create(recursive: true);
            await File(path).writeAsBytes(data);
          }
        }
      }
    } catch (e) {
      throw Exception('Lỗi khi tải chapter: $e');
    }
  }

  Future<void> downloadMangaInfo(String mangaId) async {
    try {
      final response = await dio.get('manga/$mangaId/offline-info',
          options: Options(responseType: ResponseType.bytes));

      final basePath = await _localPath;
      final mangaPath = '$basePath/$mangaId';

      await Directory(mangaPath).create(recursive: true);
      await Directory('$mangaPath/images').create(recursive: true);

      final archive = ZipDecoder().decodeBytes(response.data);

      final metadataFile = archive.findFile('metadata.json');
      if (metadataFile != null) {
        final metadataContent = String.fromCharCodes(metadataFile.content);
        final jsonData = json.decode(metadataContent);

        final coverFile = archive.findFile('images/cover.jpg');
        final bannerFile = archive.findFile('images/banner.jpg');

        if (coverFile != null) {
          await File('$mangaPath/images/cover.jpg')
              .writeAsBytes(coverFile.content as List<int>);
        }

        if (bannerFile != null) {
          await File('$mangaPath/images/banner.jpg')
              .writeAsBytes(bannerFile.content as List<int>);
        }

        final metadata = {
          '_id': jsonData['id'],
          'title': jsonData['title'] ?? 'Không có tiêu đề',
          'description': jsonData['description'] ?? '',
          'author': jsonData['author'] ?? 'Không rõ tác giả',
          'status': jsonData['status'] ?? 'Unknown',
          'genres': (jsonData['genres'] as List<dynamic>?)
                  ?.map((e) => e.toString())
                  .toList() ??
              [],
          'downloadedAt': DateTime.now().toIso8601String(),
          'coverPath': coverFile != null ? 'images/cover.jpg' : null,
          'bannerPath': bannerFile != null ? 'images/banner.jpg' : null,
        };

        await File('$mangaPath/metadata.json')
            .writeAsString(json.encode(metadata));
      }
    } catch (e) {
      throw Exception('Lỗi khi tải thông tin manga: $e');
    }
  }

  Future<List<OfflineManga>> getAllManga() async {
    try {
      final basePath = await _localPath;
      final directory = Directory(basePath);

      if (!await directory.exists()) {
        return [];
      }

      final List<OfflineManga> mangas = [];

      await for (final dir in directory.list()) {
        if (dir is Directory) {
          final mangaId = dir.path.split('/').last;
          final metadataPath = '${dir.path}/metadata.json';

          if (await File(metadataPath).exists()) {
            final content = await File(metadataPath).readAsString();
            try {
              final manga = OfflineManga.fromJson(json.decode(content));
              mangas.add(manga);
            } catch (e) {
              print('Lỗi parse metadata cho manga $mangaId: $e');
            }
          }
        }
      }

      return mangas;
    } catch (e) {
      print('Lỗi getAllManga: $e');
      throw Exception('Lỗi khi lấy danh sách manga: $e');
    }
  }

  Future<OfflineManga?> getMangaInfo(String mangaId) async {
    try {
      final basePath = await _localPath;
      final metadataPath = '$basePath/$mangaId/metadata.json';

      if (!await File(metadataPath).exists()) {
        return null;
      }

      final content = await File(metadataPath).readAsString(encoding: utf8);
      return OfflineManga.fromJson(json.decode(content));
    } catch (e) {
      throw Exception('Lỗi khi đọc thông tin manga: $e');
    }
  }

  Future<OfflineChapter?> getChapter(String mangaId, String chapterId) async {
    try {
      final basePath = await _localPath;
      final metadataPath =
          '$basePath/$mangaId/chapters/$chapterId/metadata.json';

      if (!await File(metadataPath).exists()) {
        return null;
      }

      final content = await File(metadataPath).readAsString(encoding: utf8);
      return OfflineChapter.fromJson(json.decode(content));
    } catch (e) {
      throw Exception('Lỗi khi đọc thông tin chapter: $e');
    }
  }

  Future<String> getMangaImagePath(String mangaId, String relativePath) async {
    final basePath = await _localPath;
    return '$basePath/$mangaId/$relativePath';
  }

  Future<List<String>> getDownloadedChapters(String mangaId) async {
    try {
      final basePath = await _localPath;
      final chaptersPath = '$basePath/$mangaId/chapters';
      final directory = Directory(chaptersPath);

      if (!await directory.exists()) {
        return [];
      }

      final List<String> chapterIds = [];
      await for (final dir in directory.list()) {
        if (dir is Directory) {
          final chapterId = dir.path.split('/').last;
          final metadataPath = '${dir.path}/metadata.json';

          if (await File(metadataPath).exists()) {
            final content = await File(metadataPath).readAsString();
            try {
              final jsonData = json.decode(content);
              final chapter = OfflineChapter.fromJson(jsonData);
              chapterIds.add(chapterId);
            } catch (e, stack) {
              print('Lỗi parse metadata cho chapter $chapterId: $e');
              print('Stack trace: $stack');
            }
          }
        }
      }

      chapterIds.sort((a, b) {
        final chapterA =
            File('$chaptersPath/$a/metadata.json').readAsStringSync();
        final chapterB =
            File('$chaptersPath/$b/metadata.json').readAsStringSync();
        final numberA = json.decode(chapterA)['number'] as int;
        final numberB = json.decode(chapterB)['number'] as int;
        return numberB.compareTo(numberA);
      });

      return chapterIds;
    } catch (e) {
      return [];
    }
  }

  Future<List<String>> getChapterImagePaths(
      String mangaId, String chapterId) async {
    try {
      final chapter = await getChapter(mangaId, chapterId);
      if (chapter == null) {
        throw Exception('Không tìm thấy chapter');
      }

      final basePath = await _localPath;
      final chapterPath = '$basePath/$mangaId/chapters/$chapterId';

      final absolutePaths = chapter.pagePaths.map((relativePath) {
        final fullPath = '$chapterPath/$relativePath';
        if (!File(fullPath).existsSync()) {
          print('File không tồn tại: $fullPath');
        }
        return fullPath;
      }).toList();

      return absolutePaths;
    } catch (e) {
      print('Lỗi lấy danh sách ảnh chapter: $e');
      rethrow;
    }
  }
}
