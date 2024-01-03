import 'package:flutter/material.dart';
import 'package:hobbies_match/views/my_textfield.dart';

class LoginView extends StatelessWidget {
  //text editing controllers
  final UserNameController = TextEditingController();
  final PasswordController = TextEditingController();

  void signUserIn() {}

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50.0,
              ),
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
              ),
              const SizedBox(
                height: 15.0,
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.50,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      'or continue with',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.50,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/assets/images/fcb.png',
                    height: 50,
                    width: 50,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Image.asset(
                    'lib/assets/images/fcb.png',
                    height: 50,
                    width: 50,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const Text(
                    "Register now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
