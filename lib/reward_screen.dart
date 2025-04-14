import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class RewardsScreen extends StatelessWidget {
  const RewardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
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
          child: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      Text(
                        'Rewards',
                        style: GoogleFonts.dosis(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(Icons.notifications, color: Colors.purple),
                    ],
                  ),
                ),

                const SizedBox(height: 40),

                Lottie.asset('assets/lotties/reward.json',fit: BoxFit.fitWidth),

                // Badge Section
                Container(
                  margin: const EdgeInsets.only(bottom: 30),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFFF0F4FF),
                        Color(0xFFFFFFFF),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          RewardBadge(
                            bgColor: Color(0xFFCD7F32),
                            lottiePath: 'assets/lotties/bronze.json',
                            label: 'Bronze',
                          ),
                          RewardBadge(
                            bgColor: Color(0xFFC0C0C0),
                            lottiePath: 'assets/lotties/silver.json',
                            label: 'Silver',
                          ),
                          RewardBadge(
                            bgColor: Color(0xFFFFD700),
                            lottiePath: 'assets/lotties/gold.json',
                            label: 'Gold',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

class RewardBadge extends StatelessWidget {
  final Color bgColor;
  final String lottiePath;
  final String label;

  const RewardBadge({
    super.key,
    required this.bgColor,
    required this.lottiePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: bgColor.withOpacity(0.2),
          radius: 40,
          child: Lottie.asset(
            lottiePath,
            height: 52,
            width: 52,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: GoogleFonts.dosis(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: bgColor,
          ),
        ),
      ],
    );
  }
}


