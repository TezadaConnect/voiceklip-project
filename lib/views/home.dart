import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:voiceklip_app/components/mybutton.dart';
import 'package:voiceklip_app/provider/auth_provider.dart';
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
                
                Container(
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextField(controller: emailController, decoration: InputDecoration(labelText: "Email")),
                      TextField(controller: passwordController, decoration: InputDecoration(labelText: "Password")),
                      
                    ],
                  ),
                ),
                const SizedBox(height: 80,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: MyButton(
                    onTap: () {
                      
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