import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voiceklip_app/components/mybutton.dart';




class WelcomePremium extends StatefulWidget {
  const WelcomePremium({super.key});

  @override
  State<WelcomePremium> createState() => _WelcomePremiumState();
}

class _WelcomePremiumState extends State<WelcomePremium> {
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
                  const SizedBox(height: 20,),

                  Image.asset('asset/images/voiceklip_logo_only.png', height: 190,),
                  const SizedBox(height: 10,),
                  const Text('Congratulations!',
                  style: TextStyle(color: Colors.white, fontSize: 45),
                  ),
                  const Text('You are now a part of',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  const Text('VoiceKLIP',
                  style: TextStyle(color: Colors.white, fontSize: 55, fontWeight: FontWeight.bold),
                  ),
                  const Text('PREMIUM MEMBERSHIP',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(height: 20,),
                  const Text('CREATE YOUR',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90.0),
                    child: MyButton(
                       onTap: () => context.go('/premium_account'),
                        text: 'PREMIUM',
                        txtstyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                        color: const Color.fromARGB(213, 255, 14, 14),
                      ),
                  ),
                  
                  // const Text('PREMIUM',
                  // style: TextStyle(color: Colors.white, fontSize: 45, backgroundColor: Color.fromARGB(255, 189, 26, 14), fontWeight: FontWeight.bold),
                  // ),
                  const Text('NOW!',
                  style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 80,),
                  
                       
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}