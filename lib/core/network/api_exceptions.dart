import 'package:dio/dio.dart';
import 'package:dontknow_jus_test/core/network/api_error.dart';

class ApiExceptions {
  static ApiError handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
        return ApiError(message: "Bad Connection");

      case DioExceptionType.badResponse:
        return ApiError(message: error.toString());

      default:
        return ApiError(message: 'something went wrong');
    }
  }
}
