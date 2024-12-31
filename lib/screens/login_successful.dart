import 'package:flutter/material.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0D16),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Success Icon
                    Icon(
                      Icons.check_circle_outline,
                      color: Colors.white, // Grey background effect
                      size: 80,
                    ),
                    const SizedBox(height: 20),
                    // Title Text
                    Text(
                      "Password reset\nsuccessful",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Color(0xFF3E4958),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Description Text
                    Text(
                      "You have successfully reset your \npassword. Please use your new \npassword when logging in.",
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Login Button at the Bottom
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // Login action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3480FE),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),
                child: const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

