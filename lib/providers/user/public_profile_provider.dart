import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../models/user/public_profile.model.dart';
import '../../services/user_profile_service.dart';
import '../../providers/dio_provider.dart';

final userProfileServiceProvider = Provider<UserProfileService>((ref) {
  return UserProfileService(ref.watch(dioProvider));
});

final publicProfileProvider = FutureProvider.family<PublicProfile, String>((ref, userId) async {
  final userProfileService = ref.watch(userProfileServiceProvider);
  return userProfileService.getPublicProfile(userId);
}); 