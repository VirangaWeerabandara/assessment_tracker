import 'dart:ui';
import 'package:assessment_tracker/adminLogin.dart';
import 'package:flutter/material.dart';

class StudentLogin extends StatefulWidget {
  const StudentLogin({super.key});

  @override
  State<StudentLogin> createState() => _LoginState();
}

class _LoginState extends State<StudentLogin> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Center(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.15),
                Text(
                  'School Assessment',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenHeight * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Tracker',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: screenHeight * 0.04,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: screenHeight * 0.1),
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
                          width: screenWidth,
                          height: screenHeight * 0.636,
                          child: Column(
                            children: [
                              SizedBox(height: screenHeight * 0.05),
                              Text(
                                'Student Login',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: screenHeight * 0.03,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(height: screenHeight * 0.05),
                              SizedBox(
                                width: screenWidth * 0.85,
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
                              SizedBox(height: screenHeight * 0.02),
                              SizedBox(
                                width: screenWidth * 0.85,
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
                              SizedBox(height: screenHeight * 0.03),
                              Container(
                                width: screenWidth * 0.85,
                                height: screenHeight * 0.05,
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
                              SizedBox(height: screenHeight * 0.04),
                              Container(
                                width: screenWidth * 0.85,
                                height: screenHeight * 0.05,
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
                                    'Login as Admin',
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
