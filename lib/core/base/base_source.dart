import 'package:dio/dio.dart';
import 'package:movie_app/core/errors/exceptions.dart';

abstract class BaseSource {
  final Dio dio;
  BaseSource(this.dio);
  Future<T> makeRequest<T>({
    required String path,
    required String method,
    Map<String, dynamic>? queryParameters,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? body,
    required T Function(dynamic data) call,
  }) async {
    try {
      final options = Options(headers: headers ?? {});
      Response response;
      if (method == 'GET') {
        response = await dio.get(
          path,
          queryParameters: queryParameters ?? {},
          options: options,
        );
      } else if (method == 'PATCH') {
        response = await dio.patch(
          path,
          data: body ?? {},
          queryParameters: queryParameters ?? {},
          options: options,
        );
      } else if (method == 'POST') {
        response = await dio.post(
          path,
          data: body ?? {},
          queryParameters: queryParameters ?? {},
          options: options,
        );
      } else if (method == 'DELETE') {
        response = await dio.delete(
          path,
          data: body ?? {},
          queryParameters: queryParameters ?? {},
          options: options,
        );
      } else {
        throw ArgumentError('Unsupported HTTP method: $method');
      }
      _validateResponse(response);
      return call(response.data);
    } on DioException catch (e) {
      print('Error in $method request: $e ------------------------------');
      print(e);
      e.toAppError();
    } catch (e) {
      throw UnknownError('Error in $method request: $e');
    }
  }

  void _validateResponse(Response response) {
    if (response.statusCode == null ||
        response.statusCode! < 200 ||
        response.statusCode! >= 300) {
      throw BadResponseError(
        response.statusMessage ?? 'Unknown',
        statusCode: response.statusCode,
      );
    }
  }
}
