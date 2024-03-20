import 'package:dio/dio.dart';
import 'package:spark/core/errors/failure.dart';

class ServerFailure extends Failure {
  ServerFailure({required super.message});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: "Connection timeout with ApiServer");
      case DioExceptionType.sendTimeout:
        return ServerFailure(message: "Send timeout with ApiServer");
      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: "Receive timeout with ApiServer");
      case DioExceptionType.badCertificate:
        return ServerFailure(message: "Bad Server Certificate");
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: "Request to ApiServer was canceled");
      case DioExceptionType.connectionError:
        return ServerFailure(message: "No Internet Connection");
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(message: 'No Internet Connection');
        }
        return ServerFailure(message: 'Unexpected Error, Please try again!');
      default:
        return ServerFailure(
            message: "Oops There was an Error, Please try again");
    }
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    String errorMessage = 'Oops There was an Error, Please try again';
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      errorMessage = response['error']['message'];
    } else if (statusCode == 404) {
      errorMessage = 'Your request not found, Please try later!';
    } else if (statusCode == 500) {
      errorMessage = 'Internal Server error, Please try later';
    }
    return ServerFailure(message: errorMessage);
  }
}
