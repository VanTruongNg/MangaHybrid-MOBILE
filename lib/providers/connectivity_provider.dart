import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';

final initialConnectivityProvider =
    FutureProvider<List<ConnectivityResult>>((ref) {
  return Connectivity().checkConnectivity();
});

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

final connectivityControllerProvider = Provider((ref) {
  ref.listen(initialConnectivityProvider, (previous, next) {
    next.whenData((statusList) {
      final isOnline = statusList.isNotEmpty &&
          statusList.any((status) => status != ConnectivityResult.none);

      final authState = ref.read(authStateProvider);
      final hasUser = authState.hasValue && authState.value != null;

      if (isOnline && hasUser) {
        ref.read(socketControllerProvider.notifier).connect();
      }
    });
  });

  ref.listen(connectivityProvider, (previous, next) {
    next.whenData((statusList) {
      final isOnline = statusList.isNotEmpty &&
          statusList.any((status) => status != ConnectivityResult.none);

      if (!isOnline) {
        ref.read(socketControllerProvider.notifier).disconnect();
      }
    });
  });

  ref.listen(authStateProvider, (previous, next) {
    if (next.hasValue) {
      final isOnline = ref.read(isOnlineProvider);
      if (next.value != null && isOnline) {
        ref.read(socketControllerProvider.notifier).connect();
      } else {
        ref.read(socketControllerProvider.notifier).disconnect();
      }
    }
  });

  return null;
});
