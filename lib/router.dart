// Input go route here

import 'package:go_router/go_router.dart';
import 'package:voiceklip_app/views/auth_page.dart';
import 'package:voiceklip_app/views/billing_payment.dart';
import 'package:voiceklip_app/views/featured.dart';

import 'package:voiceklip_app/views/pop_screen.dart';
import 'package:voiceklip_app/views/premium_account.dart';
import 'package:voiceklip_app/views/premium_create_account.dart';
import 'package:voiceklip_app/views/premium_profile.dart';
import 'package:voiceklip_app/views/premium_terms.dart';
import 'package:voiceklip_app/views/premium_watch.dart';
import 'package:voiceklip_app/views/regular_account.dart';
import 'package:voiceklip_app/views/regular_watch.dart';
import 'package:voiceklip_app/views/signup.dart';
import 'package:voiceklip_app/views/store.dart';
import 'package:voiceklip_app/views/terms_condition.dart';
import 'package:voiceklip_app/views/testt.dart';

var router = GoRouter(
  routes: [
    GoRoute (
      path: '/',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute (
      path: '/signup',
      builder: (context, state) => const SignUp(),
    ),
    GoRoute (
      path: '/login_screen',
      builder: (context, state) => const TestT(),
    ),
    GoRoute (
      path: '/pop_screen',
      builder: (context, state) => const PopScreen(),
    ),
    GoRoute (
      path: '/regular_account',
      builder: (context, state) => const RegularAccount(),
    ),
    GoRoute (
      path: '/regular_terms',
      builder: (context, state) => const TermsCondition(),
    ),
    GoRoute (
      path: '/regular_watch',
      builder: (context, state) => const RegularWatchVideo(),
    ),
    GoRoute (
      path: '/premium_payment',
      builder: (context, state) => const BillingPayment(),
    ),
    GoRoute (
      path: '/premium_watch',
      builder: (context, state) => const PremiumWatchVideo(),
    ),
    GoRoute (
      path: '/premium_terms',
      builder: (context, state) => const PremiumTermsCondition(),
    ),
    GoRoute (
      path: '/premium_create',
      builder: (context, state) => const PremiumCreateAccount(),
    ),
    GoRoute (
      path: '/premium_account',
      builder: (context, state) => const PremiumAccount(),
    ),
    GoRoute (
      path: '/premium_profile',
      builder: (context, state) => const PremiumProfile(),
    ),
    GoRoute (
      path: '/featured_screen',
      builder: (context, state) => const FeaturedPerformance(),
    ),
    GoRoute (
      path: '/mystore_screen',
      builder: (context, state) => const MyStore(),
    ),
  ],
);