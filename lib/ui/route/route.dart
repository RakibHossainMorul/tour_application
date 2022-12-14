// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:tour_application/ui/views/authentication/sign_up.dart';
import 'package:tour_application/ui/views/onboarding_screen.dart';
import 'package:tour_application/ui/views/privacy_policy.dart';
import 'package:tour_application/ui/views/splash_screen.dart';
import 'package:tour_application/ui/views/user_form.dart';

import '../views/authentication/sing_in.dart';

//Declare Route variable
const String splashScreenRoute = '/splash_screen';
const String onboardingRoute = '/onboarding_screen';
const String signUpRoute = '/signUp_screen';
const String signInRoute = '/signIn_screen';
const String userFormRoute = '/user_form_screen';
const String privacyPolicyRoute = '/privacy_policy_screen';

List<GetPage> pages = [
  GetPage(
    name: splashScreenRoute,
    page: () => SplashScreen(),
  ),
  GetPage(
    name: onboardingRoute,
    page: () => OnboardingScreen(),
  ),
  GetPage(
    name: signUpRoute,
    page: () => signUpScreen(),
  ),
  GetPage(
    name: signInRoute,
    page: () => signInScreen(),
  ),
  GetPage(
    name: userFormRoute,
    page: () => UserForm(),
  ),
  GetPage(
    name: privacyPolicyRoute,
    page: () => privacyPolicy(),
  ),
];
