
import 'package:flutter/material.dart';

import '../../../../common/appbar.dart';
import '../../../../common/commonSizeBox.dart';
import '../../../../common/drawer.dart';

class CategoryAddScreen extends StatefulWidget {
  const CategoryAddScreen({super.key});

  @override
  State<CategoryAddScreen> createState() => _CategoryAddScreenState();
}

class _CategoryAddScreenState extends State<CategoryAddScreen> {
  final TextEditingController _categoryNameController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Add Category '),
      drawer: commonDrawer(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _categoryNameController,
              decoration: InputDecoration(
                labelText: 'Category name',
                labelStyle: const TextStyle(color: Colors.orange, fontSize: 15),
                contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
                enabledBorder: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    borderSide: BorderSide(color: Colors.orange)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(color: Colors.orange)),
              ),
            ),

            commonSizeBox(height: 30),
            Container(
              height: 50,
              width: 100,
              decoration: const BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: TextButton(
                  onPressed: () {

                  },
                  child: const Text(
                    'Add Category',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
