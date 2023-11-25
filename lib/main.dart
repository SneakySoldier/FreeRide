import 'package:flutter/material.dart';
import 'package:free_ride/pages/auth.dart';
import 'package:free_ride/pages/content.dart';
import 'package:free_ride/pages/password_recovery.dart';
import 'package:free_ride/pages/registration.dart';

void main() {
  runApp(const BlackMarket());
}

class BlackMarket extends StatelessWidget {
  const BlackMarket({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => AuthorizationPage(),
        '/reg': (context) => RegistrationPage(),
        '/recovery': (context) => RecoveryPage(),
        '/content': (context) => ContentPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      title: 'Свободные водители',
    );
  }
}
