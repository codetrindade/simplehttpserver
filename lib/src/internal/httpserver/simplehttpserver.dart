import 'dart:io';

import 'package:mason_logger/mason_logger.dart';
import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_static/shelf_static.dart';



//TODO default port will be check if is free

class SimpleHttpServer{

  SimpleHttpServer._(this._server, this.path);
  final HttpServer _server;
  final String path;

  String get host => 'localhost';

  int get port => 8080;

  String get urlBase => 'http://$host:$port/';
  
  /// By default the following headers are in this set:
  ///
  ///     Content-Type: text/plain; charset=utf-8
  ///     X-Frame-Options: SAMEORIGIN
  ///     X-Content-Type-Options: nosniff
  ///     X-XSS-Protection: 1; mode=block
  ///
  /// If the `Server` header is added here and the `serverHeader` is set as
  /// well then the value of `serverHeader` takes precedence.
  void setServerHeader(String header){
    //TODO CHANGE TO ADD ALL NEW HEADERS
    for (final newHeader in HttpHeaders.requestHeaders){
      _server.serverHeader = newHeader;
    }
  }

  
  static Future<SimpleHttpServer> run({
    String? path,
    int port = 8080,
    Object address = 'localhost',
  }) async {
    path ??= Directory.current.path;
    
  
    //TODO verify if Diretory Exist
    Logger().alert(path);
    final pipeline = const Pipeline()
        .addMiddleware(logRequests())
        .addHandler(createStaticHandler(path, defaultDocument: 'index.html'));
    
    final server = await io.serve(pipeline, address, port);
  
    return SimpleHttpServer._(server, path);
  }
}
