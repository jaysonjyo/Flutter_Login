import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Duration get lodingtime =>  Duration(microseconds: 2000);
  // login
  Future<String?> _loginusers(LoginData data) {
    return Future.delayed(lodingtime).then((_) {
      // Return null for success, or an error message if login fails
      if (data.name != null && data.password != null) {
        return null; // Login successful
      } else {
        return "Invalid username or password"; // Login failed
      }
    });
  }
  // forgot password
  Future<String?> _forgotpassword(String data) {
    return Future.delayed(lodingtime).then((_) {
      // Return null for success, or an error message if password recovery fails
      if (data.isNotEmpty) {
        return null; // Password recovery successful
      } else {
        return "Please enter a valid email address"; // Recovery failed
      }
    });
  }
  Future<String?> _signup(SignupData data) {
    return Future.delayed(lodingtime).then((_) {
      // Replace this with your signup validation logic
      if (data.name != null && data.password != null) {
        return null; // Signup successful
      } else {
        return "Signup failed: Username already exists"; // Signup failed
      }
    });
  }
  
  Widget build(BuildContext context) {
    return Scaffold(
body: FlutterLogin(
    onLogin: _loginusers,
    onRecoverPassword: _forgotpassword,
    onSignup: _signup,
),
    );
  }
}
