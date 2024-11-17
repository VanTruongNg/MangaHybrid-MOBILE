import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final connectivityProvider = StreamProvider<List<ConnectivityResult>>((ref) {
  return Connectivity().onConnectivityChanged;
});

final isOnlineProvider = Provider<bool>((ref) {
  final connectivity = ref.watch(connectivityProvider);
  return connectivity.when(
    data: (statusList) {
      return statusList.isNotEmpty &&
          statusList.any((status) => status != ConnectivityResult.none);
    },
    loading: () => true,
    error: (_, __) => false,
  );
});
