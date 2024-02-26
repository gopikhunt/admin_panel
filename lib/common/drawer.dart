


import 'package:admin_panel/common/snackbar_common.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';




import '../routes/routes_manage.dart';

Widget commonDrawer(BuildContext context) {
  return Drawer(
    backgroundColor: Colors.white,
    child: ListView(
      //  padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Column(
              children: [
                Image(
                  image: AssetImage("assets/images/logo.png"),
                  height: 130,
                ),
              ],
            )),
        ListTile(
          title: const Text('Dashboard'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.homeScreen);
          },
        ),
        ListTile(
          title: const Text('Products'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.productScreen);
          },
        ),
        ListTile(
          title: const Text('Categories'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.categoriesScreen);
          },
        ),
        ListTile(
          title: const Text('Orders'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.orderScreen);
          },
        ),
        ListTile(
          title: const Text('Users'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.userScreen);
          },
        ),
        ListTile(
          title: const Text('Feedback'),
          onTap: () {
            Navigator.pushNamed(context, AppRoutes.feedbackScreen);
          },
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Container(
              height: 50,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: TextButton(
                  onPressed: () {
                    print("--------------1");
                    clearPreferences();
                    print("Logout successfully");

                    Navigator.pushNamedAndRemoveUntil(
                        context, AppRoutes.SignInScreen, (route) => false);

                    snackBarCommon(
                        text: 'Logout Successfully', context: context);

                    print("------------3");
                  },
                  child: const Text(
                    "Logout",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ))),
        )
      ],
    ),
  );
}

Future<void> clearPreferences() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.clear();
}
