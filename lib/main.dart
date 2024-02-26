import 'package:admin_panel/routes/routes_manage.dart';
import 'package:admin_panel/shared_preference/shared_preference_service.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'constant/appName.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDTHNsirWiDVAyvlRbnp1NNmzmMn7-mbnM",
        appId: "1:645900162909:android:44f2f485ad44fe2e183ab4",
        messagingSenderId: "645900162909",
        projectId: "grocery-store-101")
  );

  await PreferenceServices.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appName,
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRoutes.onGenerateRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}
