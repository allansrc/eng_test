import 'package:dio/dio.dart';

abstract class HttpClient {
  Future<Map<String, dynamic>?> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  });
  Future<Map<String, dynamic>?> post();
  Future<Map<String, dynamic>?> put();
  Future<Map<String, dynamic>?> patch();
  Future<Map<String, dynamic>?> delete();
}
