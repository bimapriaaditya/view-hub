import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

// Apps
import 'screens/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "View Hub",
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
        textTheme: TextTheme(
          bodyText1: GoogleFonts.manrope(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: Colors.white,
          ),
          bodyText2: const TextStyle(color: Colors.white),
        )
      ),
      home: const SplaceScreen(),
    );
  }
}
