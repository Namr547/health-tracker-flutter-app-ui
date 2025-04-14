import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'bottomNavBar.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => MainNavigationScreen()),
      );
    });

    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFE1D9F5),
              Color(0xFFB5E2FA),
              Color(0xFFFFFFFF),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Optional Lottie animation
              Lottie.asset(
                'assets/lotties/cycling.json',
                fit: BoxFit.cover,
              ),

              const SizedBox(height: 20),

              Text(
                'Fitness Tracker',
                style: GoogleFonts.dosis(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                'Your steps, your strength.',
                style: GoogleFonts.dosis(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                  color: Colors.purpleAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
