import 'dart:convert';
import 'package:avolta/components/FloatingSnackbar.dart';
import 'package:avolta/components/NavBar.dart';
import 'package:avolta/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:logger/logger.dart';

final logger = Logger();

class ApiService {
  final String baseUrl = 'https://avolta-app-backend.vercel.app';
  final FlutterSecureStorage storage = FlutterSecureStorage();

  Future<void> loginEmployee(
      BuildContext context, String epfNo, String password) async {
    final url = Uri.parse('$baseUrl/auth/login');

    try {
      final requestBody = json.encode({
        'EPF_No': epfNo,
        'password': password,
      });

      final response = await http.post(
        url,
        headers: {'Content-Type': 'application/json'},
        body: requestBody,
      );

      if (response.statusCode == 200) {
        final responseData = json.decode(response.body);
        final token = responseData['token'];

        // Save the token securely
        await storage.write(key: 'authToken', value: token);

        logger.i('Login successful. Token saved securely.');
        await showNotification("Login Successful", "Welcome back!");
        
        if (context.mounted) {
          FloatingSnackBar.show(context, "Login successful!",
              backgroundColor: Colors.green);
        }
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Navbar()));
      } else {
        logger.w('Failed to login: ${response.body}');
        if (context.mounted) {
          FloatingSnackBar.show(context, "Login failed: ${response.body}",
              backgroundColor: Colors.red);
        }
      }
    } catch (error) {
      logger.e('Error occurred: $error');
      if (context.mounted) {
        FloatingSnackBar.show(context, "Error occurred: $error",
            backgroundColor: Colors.red);
      }
    }
  }
}
