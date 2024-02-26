

import 'package:flutter/material.dart';

import 'components/spash_body.dart';



class SplashScreenHome extends StatefulWidget {
  const SplashScreenHome({super.key});

  @override
  State<SplashScreenHome> createState() => _SplashScreenHomeState();
}

class _SplashScreenHomeState extends State<SplashScreenHome> {
  @override
  Widget build(BuildContext context) {

    return const SplashScreenBody();

  }
}
