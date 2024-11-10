import 'package:freezed_annotation/freezed_annotation.dart';

enum StatusEnum {
  @JsonValue('In Progress')
  inProgress,
  @JsonValue('Completed')
  completed,
  @JsonValue('Dropped')
  dropped;
}

enum ApprovalStatus {
  @JsonValue('Pending')
  pending,
  @JsonValue('Approved')
  approved,
  @JsonValue('Rejected')
  rejected;
}