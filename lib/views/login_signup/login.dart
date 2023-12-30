import 'package:flutter/material.dart';
import 'package:hobbies_match/views/my_textfield.dart';

class LoginView extends StatelessWidget {
  //text editing controllers
  final UserNameController = TextEditingController();
  final PasswordController = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Icon(
                Icons.lock,
                color: Colors.black,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                "Welcome back you've been missed!",
                style: TextStyle(color: Colors.grey.shade500),
              ),
              const SizedBox(
                height: 15.0,
              ),
              MyTextField(
                  controller: UserNameController,
                  hintText: 'Username',
                  obsecure: false),
              const SizedBox(
                height: 15.0,
              ),
              MyTextField(
                  controller: PasswordController,
                  hintText: 'Password',
                  obsecure: true),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
