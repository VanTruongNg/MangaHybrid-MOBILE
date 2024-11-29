import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:webtoon_mobile/config/env.dart';
import 'package:webtoon_mobile/services/token_service.dart';
import 'package:webtoon_mobile/providers/dio_provider.dart';

final socketProvider = Provider.autoDispose<IO.Socket?>((ref) {
  return null;
});

class SocketController extends StateNotifier<IO.Socket?> {
  final Ref ref;
  final TokenService _tokenService;

  SocketController(this.ref, this._tokenService) : super(null);

  Future<void> connect() async {
    final token = await _tokenService.getAccessToken();
    if (token == null) return;

    try {
      print('Kết nối Socket.IO...');

      final socket = IO.io(
          Env.wsUrl,
          IO.OptionBuilder()
              .setExtraHeaders({
                'Authorization': 'Bearer $token',
                'Connection': 'Upgrade',
                'Upgrade': 'websocket',
                'Sec-WebSocket-Version': '13',
                'Sec-WebSocket-Extensions':
                    'permessage-deflate; client_max_window_bits'
              })
              .enableAutoConnect()
              .enableReconnection()
              .setReconnectionAttempts(5)
              .setReconnectionDelay(1000)
              .setTransports(['websocket'])
              .build());

      socket.onConnect((_) {
        print('Socket.IO đã kết nối thành công');

        socket.emit('join', {'message': 'Client connected'});

        socket.onAny((event, data) {
          print('Nhận event: $event với data: $data');
        });

        socket.on('previoustMessages', (data) {
          print('Nhận previoustMessages: $data');
        });

        socket.on('newMessage', (data) {
          print('Nhận newMessage: $data');
        });
      });

      socket.onDisconnect((_) {
        print('Socket.IO đã ngắt kết nối');
        disconnect();
      });

      socket.onError((error) {
        print('Lỗi Socket.IO: $error');
        if (error.toString().contains('401')) {
          disconnect();
        }
      });

      state = socket;
    } catch (e) {
      print('Lỗi kết nối Socket.IO: $e');
      rethrow;
    }
  }

  void disconnect() {
    state?.disconnect();
    state = null;
  }
}

final socketControllerProvider =
    StateNotifierProvider<SocketController, IO.Socket?>((ref) {
  return SocketController(ref, ref.watch(tokenServiceProvider));
});

final socketConnectionProvider = Provider<bool>((ref) {
  final socket = ref.watch(socketControllerProvider);
  return socket?.connected ?? false;
});
