import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:voiceklip_app/components/common/loading_screen_common.dart';
import 'package:voiceklip_app/components/mybutton.dart';
import 'package:voiceklip_app/helpers/validator_helper.dart';
import 'package:voiceklip_app/providers/auth_provider.dart';
import 'package:voiceklip_app/providers/response_provider.dart';
import 'package:voiceklip_app/views/signup.dart';
// import 'package:voiceklip_app/views/voiceklip_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUserIn(BuildContext ctx) async {
    final responseProvider = Provider.of<ResponseProvider>(ctx, listen: false);
    if (_formKey.currentState?.validate() == true) {
      responseProvider.isBusy(true);
      await ctx
          .read<AuthProvider>()
          .signIn(emailController.text, passwordController.text)
          .then((value) => GoRouter.of(context).go("/login_screen"),
              onError: (err) =>
                  responseProvider.snackBarOnError(err.message, context));
      responseProvider.isBusy(false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return LoadingScreenCommon(
        child: Scaffold(
      backgroundColor: const Color.fromARGB(255, 31, 31, 31),
      body: SafeArea(
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
                  height: 150,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'VoiceKLIP',
                  style: TextStyle(color: Colors.white, fontSize: 38),
                ),
                const Text(
                  'SING.EXPRESS.SHOW',
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                const SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        textFieldCommon(
                            emailController, "Email", emailValidator, false),
                        const SizedBox(
                          height: 10,
                        ),
                        textFieldCommon(passwordController, "Password",
                            passwordValidator, true)
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: MyButton(
                    onTap: () => signUserIn(context),
                    text: 'Login',
                    txtstyle: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    color: const Color.fromARGB(255, 187, 21, 71),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
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
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'asset/images/smart_logo.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Image.asset(
                      'asset/images/camella_logo.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    Image.asset(
                      'asset/images/puma_logo.png',
                      height: 60,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

// Make a file called text_field_common.dart in components and Put this in there
TextFormField textFieldCommon(TextEditingController controller, String hintText,
    String? Function(String?) validator, bool isPassword) {
  return TextFormField(
    obscureText: isPassword,
    controller: controller,
    decoration: InputDecoration(
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade200),
      ),
      fillColor: Colors.white,
      filled: true,
      hintText: hintText,
      hintStyle: TextStyle(color: Colors.grey.shade500),
    ),
    validator: validator,
  );
}
