import 'package:flutter/material.dart';
import 'package:voiceklip_app/views/home.dart';



class PremiumTermsCondition extends StatefulWidget {
  const PremiumTermsCondition({super.key});

  @override
  State<PremiumTermsCondition> createState() => _PremiumTermsConditionState();
}

class _PremiumTermsConditionState extends State<PremiumTermsCondition> {
  bool isChecked = false;
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
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
                      Image.asset('asset/images/voiceklip_logo_only.png', height: 120,),
                    ],
                  ),
              
                              SingleChildScrollView(
                                child: Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                   const Text(
                                              'Terms and Conditions',
                                              style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white,
                                              ),
                                            ),
                                            const SizedBox(height: 10),
                                            const Text(
                                              'By using this app, you agree to the following terms and conditions:',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu leo.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              '2. Fusce in urna in lectus gravida interdum in et justo. Nam eu sapien.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            // Add more terms and conditions as needed
                                            const Text(
                                              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu leo.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              '2. Fusce in urna in lectus gravida interdum in et justo. Nam eu sapien.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            // Add more terms and conditions as needed
                                            const Text(
                                              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu leo.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              '2. Fusce in urna in lectus gravida interdum in et justo. Nam eu sapien.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            // Add more terms and conditions as needed
                                            const Text(
                                              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu leo.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                              
                                            ),
                                            const Text(
                                              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu leo.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              '2. Fusce in urna in lectus gravida interdum in et justo. Nam eu sapien.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            // Add more terms and conditions as needed
                                            const Text(
                                              '1. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus eu leo.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              '2. Fusce in urna in lectus gravida interdum in et justo. Nam eu sapien.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            // Add more terms and conditions as needed
                                            const Text(
                                              '2. Fusce in urna in lectus gravida interdum in et justo. Nam eu sapien.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            // Add more terms and conditions as needed
                                            const Text(
                                              'Please read these terms and conditions carefully. By using this app, you agree to',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              'abide by these terms and conditions. If you do not agree to these terms, please',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),
                                            const Text(
                                              'do not use the app.',
                                              style: TextStyle(fontSize: 16, color: Colors.white),
                                            ),

                                                          // Agreement Checkbox
                                Row(
                                children: <Widget>[
                                  Checkbox(
                                    value: isChecked, // You can manage the state of the checkbox
                                    onChanged: (bool? value) {
                                    setState(() {
                                            isChecked = value!;
                                          });
                                    },
                                  ),
                                 const Text('I agree to the terms and conditions', style: TextStyle(color: Colors.white),),
                                ],
                                                          ),
                                                            
                                                          // Agree Button
                                ElevatedButton(
                                  
                                onPressed: isChecked? () {
                                  if (isChecked==true) {
                                     Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomeScreen(),
                                    )
                                     );
                                  } 
                                }:null,
                                child: const Text('Agree'),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                              ),
                    
                 
                       Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                      Image.asset('asset/images/smart_logo.png', height: 60,),
                      const SizedBox(width: 20.0,),
                      Image.asset('asset/images/camella_logo.png', height: 60,),
                      const SizedBox(width: 20.0,),
                      Image.asset('asset/images/puma_logo.png', height: 60,),
                     
                      ],
                    ), 
                   const SizedBox(height: 20.0,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}