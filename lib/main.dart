import 'package:flutter/material.dart';
import 'package:hobbies_match/constants/routes.dart';
import 'package:hobbies_match/views/clubs_view.dart';
import 'package:hobbies_match/views/event_view.dart';
import 'package:hobbies_match/views/group_view.dart';
import 'package:hobbies_match/views/login_signup/login.dart';
import 'package:hobbies_match/views/login_signup/signup.dart';
import 'package:hobbies_match/views/profile_view.dart';

void main() async {
  runApp(
    MaterialApp(
      title: 'demo',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const HomePage(),
      routes: {
        ProfileViewRoute: (context) => const ProfileView(),
        ClubsViewRoute: (context) => const ClubsView(),
        GroupViewRoute: (context) => const GroupView(),
        EventsViewRoute: (context) => const EventsView(),
        LoginViewRoute: (context) => LoginView(),
        SignupViewRoute: (context) => const SignupView(),
      },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Column(
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Welcome to Hobbies Match',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .pushNamedAndRemoveUntil(LoginViewRoute, (route) => false);
              },
              child: const Text(
                'Next',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
