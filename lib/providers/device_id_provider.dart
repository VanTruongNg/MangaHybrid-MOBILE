import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:webtoon_mobile/services/device_id_service.dart';

final deviceIdServiceProvider = Provider<DeviceIdService>((ref) {
  const storage = FlutterSecureStorage();
  return DeviceIdService(storage);
}); 