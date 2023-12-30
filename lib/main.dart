import 'package:flutter/material.dart';
import 'package:hobbies_match/constants/routes.dart';
import 'package:hobbies_match/views/clubs_view.dart';
import 'package:hobbies_match/views/event_view.dart';
import 'package:hobbies_match/views/group_view.dart';
import 'package:hobbies_match/views/profile_view.dart';

void main() async{
  runApp(
    MaterialApp(
      title: 'demo',
      theme: ThemeData(
      primarySwatch: Colors.cyan,
    ),
    home: const HomePage(),
    routes: {
      ProfileViewRoute:(context) => const ProfileView(),
      ClubsViewRoute:(context) => const ClubsView(),
      GroupViewRoute:(context) => const GroupView(),
      EventsViewRoute:(context) => const EventsView(),
    },
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ,
    );
  }
}