import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rendez_vous/SearchDoctorScreen.dart';
import 'home_screen.dart';
import 'login_screen.dart';
import 'inscriptions.dart';
import 'dashboard.dart';
import 'forgetPassword.dart';
import 'compte.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rendez-Vous',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(),
      ),
      initialRoute: '/', // Ensure this is not null
      routes: {
        '/': (context) => HomeScreen(), // Ensure HomePage is not null
        '/login': (context) => LoginPage(),
        '/inscriptions': (context) => InscriptionPage(),
        '/dashboard': (context) => DahboardPage(),
        '/search': (context) => SearchDoctorScreen(),
        '/forgotPassword': (context) => ForgetPasswordPage(),
      },
    );
  }
}
