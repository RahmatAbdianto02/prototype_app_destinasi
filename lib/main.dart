import 'package:d_session/d_session.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:prototype_app_destinasi/firebase_options.dart';
import 'package:prototype_app_destinasi/pages/detail_page.dart';
import 'package:prototype_app_destinasi/pages/discover_page.dart';
import 'package:prototype_app_destinasi/pages/signin.dart';
import 'package:prototype_app_destinasi/pages/signup.dart';
import 'package:prototype_app_destinasi/pages/splash_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) {
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Color(0xffEFEFF0),
          textTheme: GoogleFonts.poppinsTextTheme()),
      home: FutureBuilder(
        future: DSession.getUser(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          if (snapshot.data == null) return Scaffold();
          return DiscoverPage();
        },
      ),
      routes: {
        '/discover': (context) => DiscoverPage(),
        '/signup': (context) => Signup(),
        '/sigin': (context) => Signin(),
        '/detail': (context) {
          String tourId = ModalRoute.of(context)!.settings.arguments as String;
          return DetailPage(tourId: tourId);
        }
      },
    );
  }
}
