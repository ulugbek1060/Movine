import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';

@immutable
abstract class AppError implements Exception {
  final String message;
  final StackTrace? stackTrace;
  final DateTime timestamp;
  AppError(this.message, {this.stackTrace}) : timestamp = DateTime.now();
}

class UIError extends AppError {
  UIError(super.message, {super.stackTrace});
}

class AsyncError extends AppError {
  AsyncError(super.message, {super.stackTrace});
}

class NetworkError extends AppError {
  NetworkError(super.message, {super.stackTrace});
}

class ConnectionTimeoutError extends AppError {
  ConnectionTimeoutError({StackTrace? stackTrace})
      : super('Connection timed out.', stackTrace: stackTrace);
}

class ReceiveTimeoutError extends AppError {
  ReceiveTimeoutError({StackTrace? stackTrace})
      : super('Connection timed out.', stackTrace: stackTrace);
}

class BadResponseError extends AppError {
  final int? statusCode;

  BadResponseError(super.message, {super.stackTrace, this.statusCode});
}

class InternetConnectionError extends AppError {
  InternetConnectionError({StackTrace? stackTrace})
      : super('No internet connection.', stackTrace: stackTrace);
}

class TimeoutError extends AppError {
  TimeoutError({StackTrace? stackTrace})
      : super('Connection timed out.', stackTrace: stackTrace);
}

class UnauthorizedError extends AppError {
  UnauthorizedError({StackTrace? stackTrace})
      : super(
    'Unauthorized access. Please log in again.',
    stackTrace: stackTrace,
  );
}

class ServerError extends AppError {
  final int? statusCode;

  ServerError(this.statusCode, String serverMessage, {StackTrace? stackTrace})
      : super('Error $statusCode: $serverMessage', stackTrace: stackTrace);
}

class UnknownError extends AppError {
  UnknownError(Object error, {StackTrace? stackTrace})
      : super('Unexpected error: $error', stackTrace: stackTrace);
}

extension UnknownErrorCast on Object {
  Exception toUnknownError() {
    return Exception(toString());
  }
}

extension DioExceptionExtension on DioException {
  Never toAppError() {
    switch (type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
        throw ConnectionTimeoutError();
      case DioExceptionType.receiveTimeout:
        throw ReceiveTimeoutError();
      case DioExceptionType.badResponse:
        final status = response?.statusCode;
        final msg = response?.statusMessage ?? 'Server error';
        if (status == 401 || status == 403) {
          throw UnauthorizedError();
        } else if (status == 500) {
          throw ServerError(status, message ?? 'Internal server error');
        } else {
          throw BadResponseError(msg, statusCode: status);
        }
      case DioExceptionType.connectionError:
        throw InternetConnectionError();
      default:
        throw UnknownError(
          Exception(message ?? 'Unknown error occurred'),
          stackTrace: stackTrace,
        );
    }
  }
}

extension AppErrorExtension on AppError {
  bool get isNetworkError => this is NetworkError;
  bool get isInternetConnectionError => this is InternetConnectionError;
  bool get isTimeoutError => this is TimeoutError;
  bool get isUnauthorizedError => this is UnauthorizedError;
  bool get isServerError => this is ServerError;
  bool get isBadResponseError => this is BadResponseError;
  bool get isUnknownError => this is UnknownError;
}

