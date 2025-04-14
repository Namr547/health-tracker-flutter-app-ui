import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Top Row with Profile and Notification Icon
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profile',
                        style: GoogleFonts.dosis(
                          textStyle: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ),
                      Icon(Icons.notifications, color: Colors.purple),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Name and Age
                   Text(
                    'Namr',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    )
                  ),
                   Text(
                    '26 Years Old',
                    style: GoogleFonts.dosis(
                      textStyle: TextStyle(
                        fontSize: 18,
                        color: Colors.grey,
                      ),
                    )
                  ),

                  const SizedBox(height: 30),

                  // Profile Avatar
                  Center(
                    child: Lottie.asset('assets/lotties/profile.json',fit: BoxFit.cover,),
                  ),

                  const SizedBox(height: 40),

                  // Menu Buttons
                  const ProfileMenuButton(
                    icon: Icons.emoji_events,
                    label: 'Rewards',
                    backgroundColor: Color(0xFFFFC107),
                  ),
                  SizedBox(height: 16),
                  const ProfileMenuButton(
                    icon: Icons.track_changes,
                    label: 'Activity Tracking',
                    backgroundColor: Color(0xFFFF5722),
                  ),
                  SizedBox(height: 16),
                  const ProfileMenuButton(
                    icon: Icons.settings,
                    label: 'Settings',
                    backgroundColor: Color(0xFF9C27B0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ProfileMenuButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final Color backgroundColor;

  const ProfileMenuButton({
    super.key,
    required this.icon,
    required this.label,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 20),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white),
          const SizedBox(width: 12),
          Text(
            label,
            style: GoogleFonts.dosis(
              textStyle: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            )
          )
        ],
      ),
    );
  }
}
