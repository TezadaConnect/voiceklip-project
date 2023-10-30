import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voiceklip_app/components/mybutton.dart';

class WelcomeFreeAccount extends StatefulWidget {
  const WelcomeFreeAccount({super.key});

  @override
  State<WelcomeFreeAccount> createState() => _WelcomeFreeAccountState();
}

class _WelcomeFreeAccountState extends State<WelcomeFreeAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      body: Form(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),

                  Image.asset(
                    'asset/images/voiceklip_logo_only.png',
                    height: 190,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Congratulations!',
                    style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                  const Text(
                    'You are now a part of',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const Text(
                    'VoiceKLIP',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 55,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'FREE TRIAL MEMBERSHIP',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'ACCESS YOUR',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90.0),
                    child: MyButton(
                      onTap: () => context.go('/'),
                      text: 'PROFILE',
                      txtstyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                      color: const Color.fromARGB(211, 255, 255, 255),
                    ),
                  ),

                  // const Text('PREMIUM',
                  // style: TextStyle(color: Colors.white, fontSize: 45, backgroundColor: Color.fromARGB(255, 189, 26, 14), fontWeight: FontWeight.bold),
                  // ),
                  const Text(
                    'NOW!',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 45,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
