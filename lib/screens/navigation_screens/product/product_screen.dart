
import 'package:flutter/material.dart';
import '../../../common/appbar.dart';
import '../../../common/commonSizeBox.dart';
import '../../../common/drawer.dart';
import '../../../routes/routes_manage.dart';
import 'components/product_model.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  final List<Product> products = [
    Product(
      id: 1,
      name: 'Apple',
      image: 'assets/images/apple-removebg-preview.png',
      category: 'Fruits',
      stock: 10,
      sold: 5,
      price: 20.0,
      createdOn: DateTime(2022, 2, 18),
    ),
    Product(
      id: 2,
      name: 'Mango',
      image: 'assets/images/mango-removebg-preview.png',
      category: 'Fruits',
      stock: 30,
      sold: 5,
      price: 21.0,
      createdOn: DateTime(2022, 2, 18),
    ),
    Product(
      id: 3,
      name: 'Orange',
      image: 'assets/images/orange-removebg-preview.png',
      category: 'Fruits',
      stock: 10,
      sold: 5,
      price: 20.0,
      createdOn: DateTime(2022, 2, 18),
    ),
    Product(
      id: 4,
      name: 'Pineapple',
      image: 'assets/images/pinapple-removebg-preview.png',
      category: 'Fruits',
      stock: 10,
      sold: 5,
      price: 20.0,
      createdOn: DateTime(2022, 2, 18),
    ),
  ];
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppbar(title: 'Products'),
        drawer: commonDrawer(context),
        body: Padding(
          padding:
              const EdgeInsets.only(top: 30, bottom: 30, left: 15, right: 15),
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            // color: Colors.orange,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      height: 40,
                      width: 180,
                      decoration: const BoxDecoration(
                          color: Colors.orange,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.pushNamed(
                                  context, AppRoutes.productAddScreen);
                            });
                          },
                          child: const Text(
                            "+ Add New Product",
                            style: TextStyle(color: Colors.white),
                          )),
                    )
                  ],
                ),
                commonSizeBox(height: 30),
                Row(
                  children: [
                    const Text(
                      "Product Category :",
                      style: TextStyle(fontSize: 12),
                    ),
                    commonSizeBox(width: 10),
                    Container(
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
                          underline: Container(),
                          value: _selectedItem,
                          items: dataset
                              .map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: const TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
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
                commonSizeBox(height: 30),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.orange)),
                    columns: const [
                      DataColumn(label: Text('No.',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Name',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Image',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Category',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Stock',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Sold',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Price',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Created On',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Edit',style: TextStyle(color: Colors.orange),)),
                      DataColumn(label: Text('Delete',style: TextStyle(color: Colors.orange),)),
                    ],
                    rows: products
                        .map(
                          (product) => DataRow(cells: [
                            DataCell(Text(product.id.toString())),
                            DataCell(Text(product.name)),
                            DataCell(Image.asset(product.image)),
                            DataCell(Text(product.category)),
                            DataCell(Text(product.stock.toString())),
                            DataCell(Text(product.sold.toString())),
                            DataCell(
                                Text('₹${product.price.toStringAsFixed(2)}')),
                            DataCell(Text(product.createdOn.toString())),
                            DataCell(IconButton(
                              icon: const Icon(Icons.edit,color: Colors.orange,),
                              onPressed: () {
                               setState(() {
                                 Navigator.pushNamed(context, AppRoutes.productEditScreen);
                               });
                              },
                            )),
                            DataCell(IconButton(
                              icon: const Icon(Icons.delete,color: Colors.orange,),
                              onPressed: () {
                                // Handle delete action
                              },
                            )),
                          ]),
                        )
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
