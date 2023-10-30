import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:voiceklip_app/provider/auth_provider.dart';
import 'package:voiceklip_app/router.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthProvider()),
    ],
    child: const MainScreen(),
  ));
}

class MainScreen extends StatelessWidget {
  
  const MainScreen({super.key});
  // This widget is the root of your application.
  @override
  
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: router,
      title: 'VoiceKlip',
      theme: ThemeData(
        fontFamily: GoogleFonts.ibmPlexSans().fontFamily,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
      ),
      // home: const HomeScreen(),
    );
  }
}
