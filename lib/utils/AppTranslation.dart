import 'dart:ui';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translationsKeys  = {
    'en': en,
    'bn': bn,
  };
}

final Map<String, String> en = {
  'app_name': 'Likho',
  'headline' : 'Plan what you will do to be more organized for today, tomorrow and beyond',
  'login' : 'Login',
  'signup' : 'Sign Up',
  'create' : 'Create',
  'email' : 'Email',
  'password' : 'Password',
  'forgot_password' : 'Forgot Password?',
  'username' : 'Username',
  'or' : 'or',
  'please_enter_email' : 'Please enter your email',
  'please_enter_a_valid_email' : 'Please enter a valid email',
  'please_enter_password' : 'Please enter your password',
  'dont_have_an_account' : 'Don\'t have an account?',
};

final Map<String, String> bn = {
  'app_name': 'লিখো',
  'headline' : 'আজ, আগামী এবং অতীতের জন্য আরো সংগঠিত হওয়ার জন্য আপনি কি করবেন তা পরিকল্পনা করুন',
  'login' : 'লগইন',
  'signup' : 'সাইন আপ',
  'create' : 'তৈরি করুন',
  'email' : 'ই-মেইল',
  'password' : 'পাসওয়ার্ড',
  'forgot_password' : 'পাসওয়ার্ড ভুলে গেছেন?',
  'username' : 'ইউজারনেম',
  'or' : 'অথবা',
  'please_enter_email' : 'দয়া করে আপনার ই-মেইল দিন',
  'please_enter_a_valid_email' : 'দয়া করে একটি বৈধ ই-মেইল দিন',
  'please_enter_password' : 'দয়া করে আপনার পাসওয়ার্ড দিন',
  'dont_have_an_account' : 'অ্যাকাউন্ট নেই?',
};