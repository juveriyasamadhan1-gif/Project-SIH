import 'package:flutter/material.dart';
import 'profile_screen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5FBF9),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Image.asset(
  'assets/images/hexhealth_logo.png',
  height: 130,
),

                const SizedBox(height: 30),

                const Text(
                  'Welcome to HexHealth',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 12),

                Text(
                  'Your personal health companion',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade600,
                  ),
                ),

                const SizedBox(height: 45),

                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                   onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => const ProfileScreen(),
    ),
  );
}, 
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3BBE9A),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
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