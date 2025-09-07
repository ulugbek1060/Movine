
sealed class Result<T> {
  const Result();

  bool get isSuccess => this is Success<T>;
  bool get isError => this is Error<T>;

  T? get dataOrNull => switch (this) {
    Success(value: final value) => value,
    Error() => null,
  };

  String? get errorOrNull => switch (this) {
    Success() => null,
    Error(message: final message) => message,
  };

  // Transformations
  Result<R> map<R>(R Function(T) transform) => switch (this) {
    Success(value: final value) => Success(transform(value)),
    Error(message: final message, error: final error, stackTrace: final stackTrace) =>
        Error(message, error: error, stackTrace: stackTrace),
  };

  Result<R> flatMap<R>(Result<R> Function(T) transform) => switch (this) {
    Success(value: final value) => transform(value),
    Error(message: final message, error: final error, stackTrace: final stackTrace) =>
        Error(message, error: error, stackTrace: stackTrace),
  };

  // Fold pattern
  R fold<R>({
    required R Function(T) onSuccess,
    required R Function(String, dynamic, StackTrace?) onError,
  }) => switch (this) {
    Success(value: final value) => onSuccess(value),
    Error(message: final message, error: final error, stackTrace: final stackTrace) =>
        onError(message, error, stackTrace),
  };

  T getOrThrow() => fold(
    onSuccess: (value) => value,
    onError: (message, error, stackTrace) {
      if (error is Exception) throw error;
      throw Exception(message);
    },
  );

  T getOrElse(T defaultValue) => fold(
    onSuccess: (value) => value,
    onError: (_, __, ___) => defaultValue,
  );
}

final class Success<T> extends Result<T> {
  final T value;

  const Success(this.value);

  @override
  String toString() => 'Success($value)';
}

final class Error<T> extends Result<T> {
  final String message;
  final dynamic error;
  final StackTrace? stackTrace;

  const Error(this.message, {this.error, this.stackTrace});

  @override
  String toString() => 'Error: $message';
}