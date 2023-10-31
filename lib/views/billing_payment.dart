import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:voiceklip_app/components/mybutton.dart';

class BillingPayment extends StatefulWidget {
  const BillingPayment({super.key});

  @override
  State<BillingPayment> createState() => _BillingPaymentState();
}

class _BillingPaymentState extends State<BillingPayment> {
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
                  const Text(
                    'We hear you.',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Choose your bank',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/images/bpi_logo.png',
                        height: 50,
                      ),
                      const SizedBox(
                        width: 20.0,
                      ),
                      Image.asset(
                        'asset/images/metrobank_logo.png',
                        height: 70,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'asset/images/union_logo.jpg',
                        height: 70,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Image.asset(
                        'asset/images/securitybank_logo.jpg',
                        height: 70,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Image.asset(
                        'asset/images/paymaya_logo.png',
                        height: 60,
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Image.asset(
                        'asset/images/gcash_logo.png',
                        height: 70,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Image.asset(
                    'asset/images/qr_payment.png',
                    height: 150,
                  ),
                  const Text(
                    'or',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 90.0),
                    child: MyButton(
                      onTap: () => context.go('/premium_terms'),
                      text: 'Bank Transfer',
                      txtstyle: const TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
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
