import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:eng_test/app/core/constants/url_constant.dart';
import 'package:eng_test/app/core/http_client/http_client.dart';

class DioClient implements HttpClient {
  final client = Dio();

  DioClient() {
    client.options.baseUrl = UrlConstant.baseURL;
  }

  @override
  Future<Map<String, dynamic>> get(
    String url, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await client.get(
        url,
        queryParameters: queryParameters,
        options: options,
      );
      log(response.statusCode.toString());
      return response.data;
    } on DioError catch (error) {
      throw Exception(error.message);
    }
  }

  @override
  Future<Map<String, dynamic>> post() {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> patch() {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> put() {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future<Map<String, dynamic>> delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }
}
