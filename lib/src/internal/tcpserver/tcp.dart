import 'dart:core';
import 'dart:io';

Future<void> startServer() async {
  final serverFuture = ServerSocket.bind('0.0.0.0', 55555);
  await serverFuture.then((ServerSocket server) {
    server.listen((Socket socket) {
      socket.listen((List<int> data) {
        final result = String.fromCharCodes(data);
        // print(result.substring(0, result.length - 1));
      });
    });
  });
}

void main() async {
  await startServer();
}
