import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/providers/auth/auth_state_provider.dart';
import 'package:webtoon_mobile/providers/websocket_provider.dart';

// Sửa kiểu dữ liệu để phù hợp với API mới
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
  bool isConnecting = false;

  // Kiểm tra kết nối ban đầu
  ref.listen(initialConnectivityProvider, (previous, next) {
    next.whenData((statusList) {
      final isOnline = statusList.isNotEmpty &&
          statusList.any((status) => status != ConnectivityResult.none);

      if (isOnline) {
        final authState = ref.read(authStateProvider);
        if (authState.hasValue && authState.value != null && !isConnecting) {
          isConnecting = true;
          ref.read(socketControllerProvider.notifier).connect();
        }
      }
    });
  });

  // Listen auth state changes
  ref.listen(authStateProvider, (previous, next) {
    if (next.hasValue && next.value != null) {
      final isOnline = ref.read(isOnlineProvider);
      if (isOnline && !isConnecting) {
        isConnecting = true;
        ref.read(socketControllerProvider.notifier).connect();
      }
    } else {
      isConnecting = false;
      ref.read(socketControllerProvider.notifier).disconnect();
    }
  });

  // Listen connectivity changes
  ref.listen(connectivityProvider, (previous, next) {
    next.whenData((statusList) {
      final isOnline = statusList.isNotEmpty &&
          statusList.any((status) => status != ConnectivityResult.none);

      if (isOnline) {
        final authState = ref.read(authStateProvider);
        if (authState.hasValue && authState.value != null && !isConnecting) {
          isConnecting = true;
          ref.read(socketControllerProvider.notifier).connect();
        }
      } else {
        isConnecting = false;
        ref.read(socketControllerProvider.notifier).disconnect();
      }
    });
  });

  return null;
});
