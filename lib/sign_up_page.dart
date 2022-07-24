import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Color(0xffF4F7FA),
        systemNavigationBarColor: Color(0xff272A3F),
        statusBarBrightness: Brightness.light, //todo
        systemNavigationBarIconBrightness: Brightness.light //todo
        ));

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0XffF4F7FA),
          // backgroundColor:  Colors.red,
          body: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      //todo
                      color: Colors.white,
                      spreadRadius: 20,
                      blurRadius: 7,
                      offset: Offset(0, 0), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text("Sign in",
                                style: TextStyle(
                                    color: Color(0xff6E7989),
                                    fontSize: 17,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.normal)),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                            ),
                            child: const Text("Sign up",
                                style: TextStyle(
                                    color: Color(0xff29C17E),
                                    fontSize: 17,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 17,
                    ),
                    Container(
                      width: 1000, //todo
                      child: const Text(
                        "Welcome to Grocery App",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left, //todo
                        style: TextStyle(
                          color: Color(0xff272A3F),
                          fontSize: 24,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 2),
                      width: 1000, //todo
                      child: const Text(
                        "Let's get started",
                        textDirection: TextDirection.ltr,
                        textAlign: TextAlign.left, //todo
                        style: TextStyle(
                          color: Color(0xff6E7989),
                          fontSize: 16,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Username',
                                contentPadding:
                                    EdgeInsets.only(top: 37, bottom: 7),
                                focusColor: Color(0xff29C17E)),
                            validator: (String? value) {
                              return formValidator(value, 'username');
                            },
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Email address',
                                contentPadding:
                                    EdgeInsets.only(top: 37, bottom: 7)),
                            validator: (String? value) {
                              return formValidator(value, 'email');
                            },
                          ),
                          TextFormField(
                              decoration: const InputDecoration(
                                  hintText: 'Password',
                                  contentPadding:
                                      EdgeInsets.only(top: 37, bottom: 7)),
                              validator: (String? value) {
                                return formValidator(value, 'password');
                              }),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Container(
                              alignment: Alignment.centerRight,
                              child: GestureDetector(
                                onTap: () {
                                  // Validate will return true if the form is valid, or false if
                                  // the form is invalid.

                                  if (_formKey.currentState!.validate()) {
                                    print('data ok');
                                    // Process data.
                                  } else {}
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 19),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Color(0xff29C17E),
                                  ),
                                  child: const Text("SIGN UP",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.normal)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      //
    );
  }

  formValidator(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Please enter ' + fieldName ;
    }
    return null;
  }
}
