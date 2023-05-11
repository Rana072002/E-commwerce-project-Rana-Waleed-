import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:untitled7/pages/splash_screen.dart';

void main() {
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {
 Color _primaryColor = HexColor('#FFC867');
 Color _accentColor =HexColor('#FF3CBD');

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Login Ui',
        theme: ThemeData(
          primaryColor: _primaryColor,
          accentColor: _accentColor,
          scaffoldBackgroundColor: Colors.grey.shade100,
          primarySwatch: Colors.grey,
        ),
        home: SplashScreen(title: 'Flutter Login Ui'),
      );
    }
  }