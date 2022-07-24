import 'package:flutter/material.dart';
import 'package:grocery_shopping_app/sign_up_page.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const SignUpPage();
    // return const HomePage();
  }
}
