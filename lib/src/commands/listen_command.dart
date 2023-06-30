import 'dart:async';

import 'package:args/command_runner.dart';
import 'package:mason_logger/mason_logger.dart';
import 'package:simplehttpserver/src/internal/httpserver/httpsserver.dart';
import 'package:simplehttpserver/src/internal/httpserver/simplehttpserver.dart';

class ListenCommand extends Command<int> {
  ListenCommand({required Logger logger}) : _logger = logger;

  final Logger _logger;
  @override
  String get description => 'Listen Adress on 0.0.0.0:8080 [Address:Port]';

  @override
  String get name => 'listen';

  FutureOr<int>? _startServer() async {
    var seconds = 0;
    HttpsServer().verifyFiles();
    await SimpleHttpServer.run();
    await Future.doWhile(() async {
      await Future.delayed(const Duration(seconds: 1));
      seconds++;
      if (seconds == 30) {
        _logger.warn('Finished with $seconds');
        return false;
      } else {
        _logger.info('Count Time $seconds');
        return true;
      }
    });
    return ExitCode.success.code;
  }

  @override
  FutureOr<int>? run() {
    return _startServer();
  }
}
