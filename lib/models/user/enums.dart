import 'package:json_annotation/json_annotation.dart';

enum Role {
  @JsonValue('reader')
  reader,
  @JsonValue('admin')
  admin,
  @JsonValue('uploader')
  uploader;

  String get value {
    switch (this) {
      case Role.reader:
        return 'reader';
      case Role.admin:
        return 'admin';
      case Role.uploader:
        return 'uploader';
    }
  }
}
