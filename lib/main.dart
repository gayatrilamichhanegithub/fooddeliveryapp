import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:fooddeliveryapp/admin/admin_login.dart';
import 'package:fooddeliveryapp/admin/home_admin.dart';
import 'package:fooddeliveryapp/pages/bottomnav.dart';
import 'package:fooddeliveryapp/pages/onboard.dart';
import 'package:fooddeliveryapp/widget/app_constant.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Set the Stripe publishable key
  Stripe.publishableKey = publishablekey;

  // Initialize Firebase
  await Firebase.initializeApp();

  // Set the system UI overlay style
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent, // Makes status bar transparent
    statusBarIconBrightness:
        Brightness.dark, // Adjusts icon colors for light backgrounds
  ));

  // Run the app
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food Delivery App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false, // Disable debug banner
      home: HomeAdmin(), // Starting page
    );
  }
}
