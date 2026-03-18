import 'package:dio/dio.dart';

import 'app_exceptions.dart';
import 'error_model.dart' show ErrorModel;

void handleDioExceptions(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      if (e.response == null) {
        throw ServerException(
          errModel: ErrorModel(
            errors: ["Request timed out!"],
            message: "Request timed out!",
          ),
        );
      }
      throw ServerException(errModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.sendTimeout:
      throw ServerException(errModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.receiveTimeout:
      if (e.response == null) {
        throw ServerException(
          errModel: ErrorModel(
            errors: ["Srever is offline!"],
            message: "Can't reach server.",
          ),
        );
      }
      throw ServerException(errModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.badCertificate:
      throw ServerException(errModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.cancel:
      throw ServerException(errModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.connectionError:
      if (e.response == null) {
        throw ServerException(
          errModel: ErrorModel(
            errors: ["Srever is offline!"],
            message: "Can't reach server.",
          ),
        );
      }
      throw ServerException(errModel: ErrorModel.fromJson(e.response!.data));
    case DioExceptionType.unknown:
      // throw ServerException(errModel: ErrorModel.fromJson(e.response!.data));
      throw ServerException(
        errModel: ErrorModel(
          // success: false,
          message: "Unknown Error",
          errors: [],
        ),
      );
    case DioExceptionType.badResponse:
      switch (e.response?.statusCode) {
        case 400: // Bad request
          throw ServerException(
            errModel: ErrorModel.fromJson(e.response!.data),
          );
        case 401: // unauthorized
          if (e.response!.data is String) {
            throw ServerException(
              errModel: ErrorModel(message: e.response!.data, errors: []),
            );
          }
          throw ServerException(
            errModel: ErrorModel.fromJson(e.response!.data),
          );
        case 403: // forbidden
          throw ServerException(
            errModel: ErrorModel.fromJson(e.response!.data),
          );
        case 404: // not found
          if (e.response!.toString().contains("offline")) {
            throw ServerException(
              errModel: ErrorModel(
                errors: ["Srever is offline!"],
                message: "Can't reach server.",
              ),
            );
          }
          if (e.response!.data is String) {
            throw ServerException(
              errModel: ErrorModel(
                errors: ['Unknown 404 Error!'],
                message: "Error 40a",
              ),
            );
          }
          throw ServerException(
            errModel: ErrorModel.fromJson(e.response!.data),
          );
        case 409: // cofficient
          throw ServerException(
            errModel: ErrorModel.fromJson(e.response!.data),
          );
        case 422: // Uprocessable Entity
          throw ServerException(
            errModel: ErrorModel.fromJson(e.response!.data),
          );
        case 504: // Server exception
          throw ServerException(
            errModel: ErrorModel.fromJson(e.response!.data),
          );
      }
  }
}
