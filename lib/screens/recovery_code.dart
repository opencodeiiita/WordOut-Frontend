import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:flutter/services.dart';

class RecoveryCode extends StatefulWidget {
  const RecoveryCode({super.key});

  @override
  State<RecoveryCode> createState() => _RecoveryCodeState();
}

class _RecoveryCodeState extends State<RecoveryCode> {
  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 75,
      height: 75,
      textStyle: const TextStyle(fontSize: 24, color: Colors.black),
      decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          border: Border.all(color: Colors.transparent),
          borderRadius: BorderRadius.circular(16)),
    );

    return Scaffold(
      backgroundColor: const Color(0xFF0A0D16),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0A0D16),
        title: const Text(
          "Recovery code",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 28.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "The recovery code was sent to your email.\nCode expiration time is 120s.\nPlease enter the code:",
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(height: 70),
            Pinput(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              length: 4,
              defaultPinTheme: defaultPinTheme,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              onSubmitted: (value) {
                Navigator.pushNamed(context, '/change_pwd');
              },
              closeKeyboardWhenCompleted: false,
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Add your update password logic here
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF3480FE),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  minimumSize: const Size(double.infinity, 50)),
              child: const Text(
                "Update",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
