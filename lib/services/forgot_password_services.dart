import 'dart:convert';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://backendurl.com/';

class ForgotPasswordServices {
  static Future<Map<String, dynamic>> sendVerificationCode(String email) async {
    final url = Uri.parse('$baseUrl/forgot-password');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': email}),
      );

      if (response.statusCode == 200) {
        return {'success': true, 'message': 'Verification code sent successfully', 'token': json.decode(response.body)['token']};
      } else {
        return {'success': false, 'message': json.decode(response.body)['message']};
      }
    } catch (e) {
      return {'success': false, 'message': 'Error: $e'};
    }
  }

  static Future<Map<String, dynamic>> verifyCode(String token, String code) async {
    final url = Uri.parse('$baseUrl/forgot-password/verify/$token');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'code': code}),
      );

      if (response.statusCode == 200) {
        return {'success': true, 'message': 'Verification successful'};
      } else {
        return {'success': false, 'message': json.decode(response.body)['message']};
      }
    } catch (e) {
      return {'success': false, 'message': 'Error: $e'};
    }
  }

  static Future<Map<String, dynamic>> resetPassword(String token, String newPassword) async {
    final url = Uri.parse('$baseUrl/forgot-password/set-password/$token');
    try {
      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'password': newPassword}),
      );

      if (response.statusCode == 200) {
        return {'success': true, 'message': 'Password reset successful'};
      } else {
        return {'success': false, 'message': json.decode(response.body)['message']};
      }
    } catch (e) {
      return {'success': false, 'message': 'Error: $e'};
    }
  }
}
