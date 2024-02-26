import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/commonSizeBox.dart';
import '../../../common/drawer.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppbar(title: 'DashBoard'),
        drawer: commonDrawer(context),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.pink.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 20),
                      child: Column(
                        children: [
                          const Text(
                            "₹2102",
                            style: TextStyle(color: Colors.pink, fontSize: 25),
                          ),
                          commonSizeBox(height: 10),
                          const Text(
                            "Total Earnings",
                            style: TextStyle(color: Colors.pink, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  ),
                  commonSizeBox(width: 30),
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.purple.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 20),
                      child: Column(
                        children: [
                          const Text(
                            "6",
                            style:
                                TextStyle(color: Colors.purple, fontSize: 25),
                          ),
                          commonSizeBox(height: 10),
                          const Text(
                            "Users",
                            style:
                                TextStyle(color: Colors.purple, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
              commonSizeBox(height: 30),
              Row(children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.blue.shade100,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: Column(
                      children: [
                        const Text(
                          "6",
                          style: TextStyle(color: Colors.blue, fontSize: 25),
                        ),
                        commonSizeBox(height: 10),
                        const Text(
                          "Products",
                          style: TextStyle(color: Colors.blue, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
                commonSizeBox(width: 30),
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      color: Colors.amber.shade100,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 40, bottom: 20),
                    child: Column(
                      children: [
                        const Text(
                          "12",
                          style: TextStyle(color: Colors.amber, fontSize: 25),
                        ),
                        commonSizeBox(height: 10),
                        const Text(
                          "Categories",
                          style: TextStyle(color: Colors.amber, fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ),
              ]),
              commonSizeBox(height: 30),
              Row(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                        color: Colors.orange.shade100,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15))),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40, bottom: 20),
                      child: Column(
                        children: [
                          const Text(
                            "12",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 25),
                          ),
                          commonSizeBox(height: 10),
                          const Text(
                            "Orders",
                            style:
                                TextStyle(color: Colors.orange, fontSize: 14),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
