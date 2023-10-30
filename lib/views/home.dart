

import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import 'package:voiceklip_app/components/mybutton.dart';

import 'package:voiceklip_app/views/signup.dart';


// import 'package:voiceklip_app/views/voiceklip_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  
  void signUserIn() async {
    showDialog(
      context: context, 
      builder: (context){
      return const Center (child: CircularProgressIndicator(),);
    });


    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: emailController.text,
      password: passwordController.text
        );
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }else if (e.code == 'invalid-email') {
          print('Wrong email provided for that user.');
        }
        else {
          print('error');
        }
      }
Navigator.pop(context);
      
  }

  void wrongEmailMessage(){
    showDialog(
      context: context, 
      builder: (context){
        return const AlertDialog(
          title: Text('Incorrect Email'),
        );
      }
      );
  }

  void wrongPasswordMessage(){
    showDialog(
      context: context, 
      builder: (context){
        return const AlertDialog(
          title: Text('Incorrect Password'),
        );
      }
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 20,),

                Image.asset('asset/images/voiceklip_logo_only.png', height: 150,),
                const SizedBox(height: 10,),

                const Text('VoiceKLIP',
                style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                const Text('SING.EXPRESS.SHOW',
                style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(height: 20,),
                Container(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(controller: emailController, 
                        decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Email',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                      ),
                          
                          ),
                          const SizedBox(height: 10,),
                        TextField(
                        obscureText: true,
                        controller: passwordController, 
                        decoration: InputDecoration(
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade200),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey.shade500),
                      ),
                          
                          ),
                        
                      ],
                                      ),
                    ),
                ),
                const SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: MyButton(
                    onTap: () {
                      signUserIn();
                      
                      // final authProvider = Provider.of<AuthProvider>(context, listen: false);
                      // authProvider.signInWithEmailAndPassword(emailController.text, passwordController.text);
                    } ,
                    
                    // context.go('/login_screen'),
                    
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => TestT(),
                    //     ),
                    //   ),
                    text: 'Login',
                    txtstyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    color: const Color.fromARGB(255, 187, 21, 71),
                  ),
                ),
                const SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: MyButton(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SignUp(),
                        ),
                      ),
                    text: 'Register now!',
                    txtstyle: const TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    color: const Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                 const SizedBox(height: 80,),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
  
}