import 'package:flutter/material.dart';

import '../../../../common/appbar.dart';
import '../../../../common/commonSizeBox.dart';
import '../../../../common/drawer.dart';


class ProductAddScreen extends StatefulWidget {
  const ProductAddScreen({super.key});

  @override
  State<ProductAddScreen> createState() => _ProductAddScreenState();
}

class _ProductAddScreenState extends State<ProductAddScreen> {
  final List<String> dataset = [
    'Fruits',
    'Vegetables',
    'Food-grains',
    'Oils',
    'Masalas',
    'Beverages',
    'Cleaning & Household'
  ];

  String? _selectedItem;
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();
  final TextEditingController _stockController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();
  final TextEditingController _tagsController = TextEditingController();

  // Function to pick images using ImagePicker

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Add Product '),
      drawer: commonDrawer(context),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 30, left: 18, right: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Product Title',
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
            commonSizeBox(height: 15),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: 'Product Description',
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
            commonSizeBox(height: 15),
            TextFormField(
              controller: _priceController,
              decoration: InputDecoration(
                labelText: 'Price',
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
            commonSizeBox(height: 15),
            TextFormField(
              controller: _stockController,
              decoration: InputDecoration(
                labelText: 'Stock',
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
            commonSizeBox(height: 15),
            TextFormField(
              controller: _weightController,
              decoration: InputDecoration(
                labelText: 'Wight',
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
            commonSizeBox(height: 15),
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(
                //  color: Colors.orange,
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              child: Column(
                children: [
                  const Text(
                    "Product Category :",
                    style: TextStyle(fontSize: 12, color: Colors.orange),
                  ),
                  commonSizeBox(height: 10),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          10.0), // Adjust border radius as needed
                      border: Border.all(
                        color: Colors.orange, // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton(
                        icon: const Icon(
                          Icons.arrow_drop_down_outlined,
                          color: Colors.orange,
                          size: 40,
                        ),
                        underline: Container(),
                        value: _selectedItem,
                        items: dataset
                            .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: const TextStyle(fontSize: 15),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedItem = value;
                          });
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            commonSizeBox(height: 15),
            TextFormField(
              controller: _tagsController,
              decoration: InputDecoration(
                labelText: 'Tags',
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
                  // onPressed: ()async {
                  //   String Id=randomAlphaNumeric(10);
                  //   Map<String, dynamic> productInfoMap = {
                  //     'id':Id,
                  //     'p_title': _titleController.text,
                  //     'p_description': _descriptionController.text,
                  //     'price': _priceController.text,
                  //     'stock': _stockController.text,
                  //     'wight': _weightController.text,
                  //     'tags': _tagsController.text
                  //   };
                  //   await  DatabaseMethod().addProductDetails(productInfoMap, Id).then((value){
                  //
                  //     Fluttertoast.showToast(
                  //         msg: "Product add successfully",
                  //         toastLength: Toast.LENGTH_SHORT,
                  //         gravity: ToastGravity.CENTER,
                  //         timeInSecForIosWeb: 1,
                  //         backgroundColor: Colors.red,
                  //         textColor: Colors.white,
                  //         fontSize: 16.0
                  //     );
                  //   });
                  // },
                  onPressed: () {
                    setState(() {
                      print(_titleController.text.toString());
                      print(_descriptionController.text.toString());
                      print(_priceController.text.toString());
                      print(_stockController.text.toString());
                      print(_weightController.text.toString());
                      print(_selectedItem.toString());
                      print(_tagsController.text.toString());
                    });
                  },
                  child: const Text(
                    'Add Product',
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
