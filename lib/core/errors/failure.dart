import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMessage;

  Failure(this.errorMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errorMessage);

  factory ServerFailure.froDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Received timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure('Bad Certificate ApiServer');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to ApiServer was canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('Connection error with ApiServer');
      case DioExceptionType.unknown:
        if (dioException.message!.contains('SockerException')) {
          return ServerFailure('No Internet');
        }
        return ServerFailure('Unexpected Error, Please try again!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['Error']['message']);
    } else if (statusCode == 404) {
      ServerFailure('Your request not found, Please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server error , Please try later');
    }
    return ServerFailure('Opps there was an error');
  }
}

// class CacheFailure extends Failure {}

// class NetWorkFailure extends Failure {}
