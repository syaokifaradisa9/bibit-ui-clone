import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          "assets/logo/ojk.png",
          width: 240,
        ),
        const SizedBox(height: 16),
        Image.asset(
          "assets/logo/socmed.png",
          width: 180,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}