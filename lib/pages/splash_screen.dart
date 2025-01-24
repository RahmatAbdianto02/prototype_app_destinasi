import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:prototype_app_destinasi/widgets/button_primary.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Gap(70),
          Image.asset(
            'assets/Palu.png',
            height: 100,
            width: 171,
          ),
          const Gap(10),
          const Text(
            'Go Destinations',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Color(0xff070623)),
          ),
          Image.asset(
            'assets/ic_palu.png',
            height: 250,
            width: 250,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Rencanakan liburan impian Anda di Palu dengan mudah dan cepat',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff070623)),
            ),
          ),
          const Gap(30),
          ButtonPrimary(text: 'Explore now', onTap: () {})
        ],
      ),
    );
  }
}
