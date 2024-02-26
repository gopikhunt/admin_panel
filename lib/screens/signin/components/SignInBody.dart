import 'package:flutter/material.dart';
import '../../../common/snackbar_common.dart';
import '../../../routes/routes_manage.dart';
import '../../../shared_preference/shared_preference_service.dart';

import 'common_textfield.dart';

class SignInBody extends StatefulWidget {
  const SignInBody({super.key});

  @override
  State<SignInBody> createState() => _SignInBodyState();
}

class _SignInBodyState extends State<SignInBody> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String? emailError, passwordError;
  bool status = false;

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
                          Label: 'Email address',
                          errorText: emailError,
                          controller: _emailController,
                          obscureText: false,
                          status: false,
                          onTap: () {},
                          iconForSuffix: Icons.email,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        commonTextField(
                          Label: 'Password',
                          errorText: passwordError,
                          obscureText: status,
                          controller: _passwordController,
                          status: status,
                          iconForSuffix: status == true
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onTap: () {
                            setState(() {
                              status = !status;
                            });
                          },
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
                          child: TextButton(
                              onPressed: () {
                                setState(() {
                                  print(_emailController.text.toString());
                                  print(_passwordController.text.toString());
                                });
                                onErrorFocus();
                                String email =
                                    _emailController.text.toString().trim();
                                String password =
                                    _passwordController.text.toString().trim();
                                if (email == 'admin1@gmail.com' &&
                                    password == 'Admin009') {
                                  PreferenceServices.setData(
                                      key: PreferenceServices.isLoginKey,
                                      value: true);
                                  print("-----------5 ");
                                  Navigator.pushNamed(
                                      context, AppRoutes.homeScreen);
                                  snackBarCommon(
                                      text: "Register Successfully",
                                      context: context);
                                  print("Login Suceessfully...");
                                } else {
                                  snackBarCommon(
                                      text:
                                          "Please valid EmailId and Password ",
                                      context: context);
                                }
                              },
                              child: const Text(
                                "Sign In",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              )),
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

  void onErrorFocus() {
    setState(() {
      emailError = null;
      passwordError = null;
    });
  }
}
