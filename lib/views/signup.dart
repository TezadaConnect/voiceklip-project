import 'package:flutter/material.dart';

import 'package:voiceklip_app/components/mybutton.dart';
import 'package:voiceklip_app/views/billing_payment.dart';


import 'package:voiceklip_app/views/premium_watch.dart';
import 'package:voiceklip_app/views/regular_account.dart';
import 'package:voiceklip_app/views/regular_watch.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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

                  Padding(
                    padding: const EdgeInsets.fromLTRB(45.0,0,8.0,0),
                    child: Row(
                      children: [
                         const Column(
                           children: [
                              Text('VoiceKLIP',
                            style: TextStyle(color: Colors.white, fontSize: 35),
                            ),
                            Text('SING.EXPRESS.SHOW',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                           ],
                         ),
                         const SizedBox(width: 20,),
                    
                        Image.asset('asset/images/voiceklip_logo_only.png', height: 150,),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30,),

                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20.0),
                       child: MyButton(
                           onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegularAccount(),
                          ),
                        ),
                            text: 'FREE ACCOUNT',
                            txtstyle: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            color: const Color.fromARGB(255, 255, 255, 255),),
                     ),
                     Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: MyButton(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const RegularWatchVideo(),
                          ),
                        ),
                        text: 'WATCH VIDEO',
                        txtstyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        color: Colors.transparent,),
                 )
                   ],
                 ),

                 const SizedBox(height: 5,),
              //    Column(
              //      children: [
              //        RichText(
              //         text: TextSpan(
              //         text: '• ',
              //         style: const TextStyle(color: Colors.lightBlue, fontSize: 18),
              //         children: <TextSpan>[
              //           TextSpan(text: 'Software Developer',style: 
              //         GoogleFonts.ptSansNarrow(textStyle: const TextStyle(fontSize: 15))),
              //         ],
              //   ),
              // ),
              //      ],
              //    ),
                 const SizedBox(height: 15,),
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30.0),
                   child: Text(
                   'This is a paragraph of text in Flutter. You can use the Text widget to display text with various styles, such as font size, color, and alignment. It\'s a versatile widget for rendering text content in your Flutter app.',
                   style: TextStyle(
                     fontSize: 16,  // Adjust the font size as needed
                     color: Colors.blue,  // Set the text color
                   ),
                   textAlign: TextAlign.justify,  // Adjust the text alignment (e.g., TextAlign.center, TextAlign.left)
                 ),
                 ),
                 const SizedBox(height: 30,),
                 Row(
                   children: [
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
                       child: MyButton(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const BillingPayment(),
                              ),
                            ),
                            text: 'PREMIUM ACCOUNT',
                            txtstyle: const TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                           color: const Color.fromARGB(255, 187, 21, 71),),
                     ),
                     Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: MyButton(
                        onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PremiumWatchVideo(),
                          ),
                        ),
                        text: 'WATCH VIDEO',
                        txtstyle: const TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                        ),
                        color: Colors.transparent,),
                 )
                   ],
                 ),
                 const SizedBox(height: 15,),
                 const Padding(
                   padding: EdgeInsets.symmetric(horizontal: 30.0),
                   child: Text(
                   'This is a paragraph of text in Flutter. You can use the Text widget to display text with various styles, such as font size, color, and alignment. It\'s a versatile widget for rendering text content in your Flutter app.',
                   style: TextStyle(
                     fontSize: 16,  // Adjust the font size as needed
                     color: Colors.blue,  // Set the text color
                   ),
                   textAlign: TextAlign.justify,  // Adjust the text alignment (e.g., TextAlign.center, TextAlign.left)
                 ),
                 ),
                  const SizedBox(height: 20,),
                const Row(
                   children: [
                     Padding(
                       padding: EdgeInsets.symmetric(horizontal: 30.0),
                       child: Text('500.00',
                                  style: TextStyle(color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
                                  ),
                     ),
                                 Text('First 200,000 users',
                                                           style: TextStyle(color: Colors.white, fontSize: 15),
                                                           ),
                   ],
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