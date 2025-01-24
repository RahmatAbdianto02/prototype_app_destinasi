import 'package:flutter/material.dart';

import 'package:prototype_app_destinasi/widgets/button_primary.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 70,
            ),
            Image.network(
              'https://cloud.appwrite.io/v1/storage/buckets/6730943c0034591828c6/files/678a5045000d880b9984/view?project=673093f1001af12c636f&project=673093f1001af12c636f&mode=admin',
              height: 200,
              width: 200,
            ),
            const SizedBox(
              height: 2,
            ),
            const Text(
              'Welcome to Palu',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
            Image.asset('assets/ic_palu.png'),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Informasi Wisata Kota Palu Dalam Genggaman Ponsel Anda',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: ButtonPrimary(
                text: 'Explore Now',
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(
                  //       builder: (context) => const Listdestination()),
                  // );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
