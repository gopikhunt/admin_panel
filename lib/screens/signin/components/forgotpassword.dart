import 'package:flutter/material.dart';

import 'common_textfield.dart';

class forgotPasswordScreen extends StatefulWidget {
  const forgotPasswordScreen({super.key});

  @override
  State<forgotPasswordScreen> createState() => _forgotPasswordScreenState();
}

class _forgotPasswordScreenState extends State<forgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: 763,
              width: double.infinity,
              decoration: const BoxDecoration(color: Colors.orange),
              child: Column(
                children: [
                  Container(
                      margin: const EdgeInsets.only(top: 1),
                      height: 220,
                      child: Image.asset("assets/images/logo.png")),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 240, left: 15, right: 15, bottom: 20),
              child: Container(
                height: 523,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 35, left: 12, right: 12),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        const Text(
                          "Welcome",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w800,
                              fontFamily: 'RubikBurned',
                              color: Colors.orange),
                        ),
                        const Text(
                          "Good to see you back!",
                          style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1.5,
                              fontFamily: 'ProtestStrike',
                              color: Colors.orange),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        commonTextField(
                          obscureText: false,
                          Label: 'Password',
                          // errorText: emailError,
                          // controller: _emailController,
                          status: false,
                          onTap: () {},
                          // iconForSuffix: Icons.email,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        commonTextField(
                          Label: 'Confirm Password',
                          obscureText: false,
                          // errorText: passwordError,
                          // controller: _passwordController,
                           status: false,
                          // iconForSuffix: Icons.visibility_off,
                          // onTap: () {
                          //   _obscureText  ? Icons.visibility : Icons.visibility_off;
                          //   setState(() {
                          //     _obscureText = !_obscureText;
                          //     status = !status;
                          //   });
                          // },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          height: 60,
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              color: Colors.orange,
                              borderRadius:
                              BorderRadius.all(Radius.circular(20))),
                         child: TextButton(onPressed: () {
                           
                         }, child: const Text("Confirm",
                           style: TextStyle(
                               color: Colors.white, fontSize: 17),),
                         ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
