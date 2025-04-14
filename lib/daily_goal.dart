import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class DailyGoalScreen extends StatelessWidget {
  const DailyGoalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
              stops: [0.0, 0.5, 1.0],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Top bar
                    Row(
                      children: [
                        Text(
                          'Daily Goal',
                          style: GoogleFonts.dosis(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          '5000 Steps',
                          style: GoogleFonts.dosis(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.notifications_none, size: 28),
                      ],
                    ),
                    const SizedBox(height: 30),

                    // completion percentage
                    Text(
                      '76%',
                      style: GoogleFonts.bungeeSpice(
                        textStyle: const TextStyle(
                          fontSize: 64,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    //  stat rows
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        StatRow(
                          icon: Icons.local_fire_department,
                          label: '1,600 calories',
                          color: Colors.orange,
                        ),
                        SizedBox(height: 16),
                        StatRow(
                          icon: Icons.directions_walk,
                          label: '3,800 steps today',
                          color: Colors.purple,
                        ),
                        SizedBox(height: 16),
                        StatRow(
                          icon: Icons.nightlight_round,
                          label: '7.5 hours',
                          color: Colors.blue,
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 40),
                  child: Lottie.asset(
                    'assets/lotties/man.json',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class StatRow extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color color;

  const StatRow({
    super.key,
    required this.icon,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: color, size: 30),
        const SizedBox(width: 15),
        Text(
          label,
          style: GoogleFonts.dosis(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
