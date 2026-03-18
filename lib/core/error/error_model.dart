// ignore_for_file: public_member_api_docs, sort_constructors_first
import '/core/api/end_points.dart';

class ErrorModel {
  final List errors;
  final String message;

  ErrorModel({required this.errors, required this.message});
  factory ErrorModel.fromJson(Map<String, dynamic> jsonData) {
    return ErrorModel(
      errors: jsonData[ApiKey.errors],
      message: jsonData[ApiKey.message],
    );
  }
}
