import 'package:flutter/material.dart';
import 'package:pootracker/features/authentication/presentation/login_screen.dart';
import 'package:pootracker/features/authentication/presentation/res_login_screen.dart';
import 'package:pootracker/features/authentication/presentation/signup_screen.dart';
import 'package:pootracker/features/create_Log/presentation/create_log.dart';
import 'package:pootracker/features/dash_board/presentation/dash_board_screen.dart';
import 'package:pootracker/features/splash/presentation/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ResLoginScreen(),
    );
  }
}
