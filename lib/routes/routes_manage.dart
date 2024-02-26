import 'package:admin_panel/screens/navigation_screens/categories/components/category_edit.dart';
import 'package:admin_panel/screens/navigation_screens/product/components/product_edit.dart';
import 'package:flutter/material.dart';
import '../screens/home_screen/home_screen.dart';
import '../screens/navigation_screens/categories/categories_screen.dart';
import '../screens/navigation_screens/categories/components/category_add.dart';
import '../screens/navigation_screens/feedback/feedback_screen.dart';
import '../screens/navigation_screens/orders/order_screen.dart';
import '../screens/navigation_screens/product/components/product_add.dart';
import '../screens/navigation_screens/product/product_screen.dart';
import '../screens/navigation_screens/users/user_screen.dart';
import '../screens/signin/signin_screen.dart';
import '../screens/splash_screen/home_screen.dart';

class AppRoutes {
  static const splashScreen = '/splashScreen';
  static const SignInScreen = '/signInScreen';
  static const homeScreen = '/homeScreen';
  static const categoriesScreen = '/categoriesScreen';
  static const categoriesEditScreen = '/categoriesEditScreen';
  static const categoryAddScreen = '/categoryAddScreen';
  static const feedbackScreen = '/feedbackScreen';
  static const orderScreen = '/orderScreen';
  static const productScreen = '/productScreen';
  static const productEditScreen = '/productEditScreen';
  static const productAddScreen = '/productAddScreen';
  static const userScreen = '/userScreen';

  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(
          builder: (context) => const SplashScreenHome(),
        );

      case SignInScreen:
        return MaterialPageRoute(
          builder: (context) => const signInScreen(),
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );

      case categoriesScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const CategoriesScreen(),
        );
      case categoriesEditScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const CategoryEditScreen(),
        );
      case categoryAddScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const CategoryAddScreen(),
        );
      case feedbackScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const FeedbackScreen(),
        );
      case orderScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const OrderScreen(),
        );
      case productScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const ProductScreen(),
        );
      case productEditScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const ProductEditScreen(),
        );
      case productAddScreen:
        return MaterialPageRoute(
          builder: (context) => const ProductAddScreen(),
        );
      case userScreen:
        // ignore: prefer_const_constructors
        return MaterialPageRoute(
          builder: (context) => const UserScreen(),
        );
    }

    return null;
  }
}
