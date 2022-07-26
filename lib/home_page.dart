import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grocery_shopping_app/sign_up_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xff54CD98),
        systemNavigationBarColor: Color(0xff1F915F),
        systemNavigationBarIconBrightness: Brightness.light //todo
        ));

    return MaterialApp(
        home: Builder(
      builder: (context) => Scaffold(
          backgroundColor: const Color(0Xff29C17E),
          body: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 170,
                ),
                Image.asset(
                  'assets/images/instalogo.png',
                  width: 120,
                ),
                const SizedBox(
                  height: 164,
                ),
                Column(
                  children: [
                    const Text(
                      "Welcome to",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300),
                    ),
                    Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("Grocery ",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal)),
                        Text("shopping",
                            textDirection: TextDirection.ltr,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 32,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w300))
                      ],
                    )),
                    const SizedBox(
                      height: 43,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          color: Colors.white,
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 41, vertical: 8),
                        child: const Text("SIGN IN",
                            style: TextStyle(
                                color: Color(0xff29C17E),
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 41, vertical: 8),
                        child: const Text("SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.normal)),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )),
    )
        //
        );
  }
}
