import 'package:dio/dio.dart';

class THttpHelper {
  static const String _baseUrl = 'https://example.com/api';

  static final Dio _dio = Dio(
    BaseOptions(
      baseUrl: _baseUrl,
      headers: {
        'Content-Type': 'application/json',
      },
    ),
  );

  // GET Request
  static Future<Map<String, dynamic>> get(
    String endpoint,
  ) async {
    try {
      final response = await _dio.get(endpoint);

      return response.data;
    } on DioException catch (e) {
      throw Exception(
        e.response?.data ?? e.message,
      );
    }
  }

  // POST Request
  static Future<Map<String, dynamic>> post(
    String endpoint,
    dynamic data,
  ) async {
    try {
      final response = await _dio.post(
        endpoint,
        data: data,
      );

      return response.data;
    } on DioException catch (e) {
      throw Exception(
        e.response?.data ?? e.message,
      );
    }
  }

  // PUT Request
  static Future<Map<String, dynamic>> put(
    String endpoint,
    dynamic data,
  ) async {
    try {
      final response = await _dio.put(
        endpoint,
        data: data,
      );

      return response.data;
    } on DioException catch (e) {
      throw Exception(
        e.response?.data ?? e.message,
      );
    }
  }

  // DELETE Request
  static Future<Map<String, dynamic>> delete(
    String endpoint,
  ) async {
    try {
      final response = await _dio.delete(endpoint);

      return response.data;
    } on DioException catch (e) {
      throw Exception(
        e.response?.data ?? e.message,
      );
    }
  }
}