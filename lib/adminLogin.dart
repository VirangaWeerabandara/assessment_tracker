import 'dart:ui';

import 'package:flutter/material.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _LoginState();
}

class _LoginState extends State<AdminLogin> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: screen_height * 0.15),
                Text(
                  'School Assessment',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screen_height * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Tracker',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screen_height * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screen_height * 0.1),
                ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                Colors.white.withOpacity(0.15),
                                Colors.white.withOpacity(0.15)
                              ]),
                        ),
                        child: SizedBox(
                          width: screen_width,
                          height: screen_height * 0.636,
                          child: Column(
                            children: [
                              SizedBox(height: screen_height * 0.05),
                              Text(
                                'Admin Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screen_height * 0.03,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: screen_height * 0.05),
                              SizedBox(
                                width: screen_width * 0.85,
                                child: TextField(
                                  cursorColor: Colors.white,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(
                                        top: -5, left: 10),
                                    labelText: 'Username',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.start,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    labelStyle: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey.shade500),
                                  ),
                                ),
                              ),
                              SizedBox(height: screen_height * 0.02),
                              SizedBox(
                                width: screen_width * 0.85,
                                child: TextField(
                                  cursorColor: Colors.white,
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    contentPadding: const EdgeInsets.only(
                                        top: -5, left: 10),
                                    labelText: 'Password',
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.white),
                                    ),
                                    floatingLabelAlignment:
                                        FloatingLabelAlignment.start,
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide:
                                            BorderSide(color: Colors.white)),
                                    labelStyle: TextStyle(
                                        fontSize: 17,
                                        color: Colors.grey.shade500),
                                  ),
                                ),
                              ),
                              SizedBox(height: screen_height * 0.03),
                              Container(
                                width: screen_width * 0.85,
                                height: screen_height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                  color: Colors.white,
                                ),
                                child: TextButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                              SizedBox(height: screen_height * 0.04),
                              Container(
                                width: screen_width * 0.85,
                                height: screen_height * 0.05,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Colors.white),
                                ),
                                child: TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AdminLogin()),
                                    );
                                  },
                                  child: const Text(
                                    'Login a User',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
