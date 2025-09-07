

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioInterceptor extends Interceptor {

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final apiKey = dotenv.env['TMDB_API_KEY'];
    options.headers['Authorization'] = 'Bearer $apiKey';
    // formatted print requests
    print('------------------------start------------------------');
    print('Request: ${options.method} ${options.uri}');
    print('Headers: ${options.headers}');
    print('Query Parameters: ${options.queryParameters}');
    print('-------------------------end-------------------------');
    super.onRequest(options, handler);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('------------------------start------------------------');
    print('Error: ${err.message}');
    print('-------------------------end-------------------------');
    super.onError(err, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('------------------------start------------------------');
    print('Response: ${response.statusCode} ${response.requestOptions.uri}');
    print('-------------------------end-------------------------');
    super.onResponse(response, handler);
  }

}