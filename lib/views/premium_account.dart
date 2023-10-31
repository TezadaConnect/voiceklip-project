import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voiceklip_app/components/mybutton.dart';
import 'package:voiceklip_app/components/mytextfield.dart';

class PremiumAccount extends StatefulWidget {
  const PremiumAccount({super.key});

  @override
  State<PremiumAccount> createState() => _PremiumAccountState();
}

class _PremiumAccountState extends State<PremiumAccount> {
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
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Column(
                        children: [
                          Text(
                            'VoiceKLIP',
                            style: TextStyle(color: Colors.white, fontSize: 35),
                          ),
                          Text(
                            'SING.EXPRESS.SHOW',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'asset/images/voiceklip_logo_only.png',
                        height: 120,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Image.asset(
                            'asset/images/voiceklip_logo_white.JPG',
                            height: 180,
                          ),
                          const Text(
                            'VoiceKLIP Video Ads',
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const MyTextField(
                              hintText: 'Firstname', obscureText: false),
                          const SizedBox(
                            height: 10,
                          ),
                          const MyTextField(
                              hintText: 'Lastname', obscureText: false),
                          const SizedBox(
                            height: 10,
                          ),
                          const MyTextField(
                              hintText: 'Category', obscureText: false),
                          const SizedBox(
                            height: 10,
                          ),
                          const MyTextField(
                              hintText: 'Country', obscureText: false),
                          const SizedBox(
                            height: 10,
                          ),
                          const MyTextField(
                              hintText: 'Music Genre', obscureText: false),
                          const SizedBox(
                            height: 10,
                          ),
                          const MyTextField(
                              hintText: 'Profile Theme', obscureText: false),
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Column(
                          children: [
                            Image.asset(
                              'asset/images/smart_logo.png',
                              height: 80,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Image.asset(
                              'asset/images/camella_logo.png',
                              height: 80,
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            Image.asset(
                              'asset/images/puma_logo.png',
                              height: 80,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'asset/images/toyota_logo.png',
                              height: 80,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Image.asset(
                              'asset/images/jollibee_logo.png',
                              height: 80,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                            Image.asset(
                              'asset/images/jollibee_logo.png',
                              height: 80,
                            ),
                            const SizedBox(
                              height: 7,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 70.0),
                    child: MyButton(
                      onTap: () => context.go('/premium_create'),
                      text: 'create premium profile',
                      txtstyle: const TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                      ),
                      color: const Color.fromARGB(255, 187, 21, 71),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
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
