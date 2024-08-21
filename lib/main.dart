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
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:rendez_vous/l10n/app_localizations.dart';

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
        checkboxTheme: CheckboxThemeData(
          // side: MaterialStateBorderSide.resolveWith(
          //     (_) => const BorderSide(width: 1, color: Colors.blue)),
          checkColor: MaterialStateProperty.all(Colors.white),
          fillColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.selected)) {
                return Colors.blue; // Background color when checked
              }
            },
          ),
        ),
      ),
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en', ''), // English
        const Locale('fr', ''), // French
      ],
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
