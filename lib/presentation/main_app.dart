import 'package:enabler/presentation/create_profile_screen/create_profile_screen.dart';
import 'package:enabler/presentation/job_details_screen/job_details_screen.dart';
import 'package:enabler/presentation/main_screen/main_screen.dart';
import 'package:enabler/presentation/negotiate_screen/negotiate_screen.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Enabler',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainScreen(),
      routes: {
        '/job_details_screen': (context) => const JobDetailsScreen(),
        '/negotiate_screen': (context) => const NegotiateScreen(),
        '/create_profile_screen': (context) => const CreateProfileScreen(),
      },
    );
  }
}
