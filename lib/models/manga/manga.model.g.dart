// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'manga.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MangaImpl _$$MangaImplFromJson(Map<String, dynamic> json) => _$MangaImpl(
      id: json['_id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      author: json['author'] as String,
      rating: (json['rating'] as num?)?.toDouble() ?? 0,
      like: (json['like'] as num?)?.toInt() ?? 0,
      disLike: (json['disLike'] as num?)?.toInt() ?? 0,
      views: (json['view'] as num?)?.toInt() ?? 0,
      followers: (json['followers'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      chapters: (json['chapters'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      genre:
          (json['genre'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              const [],
      uploader: json['uploader'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      version: (json['__v'] as num?)?.toInt(),
      coverImg: json['coverImg'] as String?,
      status: $enumDecodeNullable(_$StatusEnumEnumMap, json['status']) ??
          StatusEnum.inProgress,
      approvalStatus: $enumDecodeNullable(
              _$ApprovalStatusEnumMap, json['approvalStatus']) ??
          ApprovalStatus.pending,
    );

Map<String, dynamic> _$$MangaImplToJson(_$MangaImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'author': instance.author,
      'rating': instance.rating,
      'like': instance.like,
      'disLike': instance.disLike,
      'view': instance.views,
      'followers': instance.followers,
      'chapters': instance.chapters,
      'genre': instance.genre,
      'uploader': instance.uploader,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      '__v': instance.version,
      'coverImg': instance.coverImg,
      'status': _$StatusEnumEnumMap[instance.status]!,
      'approvalStatus': _$ApprovalStatusEnumMap[instance.approvalStatus]!,
    };

const _$StatusEnumEnumMap = {
  StatusEnum.inProgress: 'In Progress',
  StatusEnum.completed: 'Completed',
  StatusEnum.dropped: 'Dropped',
};

const _$ApprovalStatusEnumMap = {
  ApprovalStatus.pending: 'Pending',
  ApprovalStatus.approved: 'Approved',
  ApprovalStatus.rejected: 'Rejected',
};
