import 'package:flutter/material.dart';
import '../../../common/appbar.dart';
import '../../../common/commonSizeBox.dart';
import '../../../common/drawer.dart';
import '../../../routes/routes_manage.dart';
import 'components/categories_model.dart';

class CategoriesScreen extends StatefulWidget {
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  final List<Category> category = [
    Category(
      id: 1,
      name: 'Food-grains & Atta',
      image: 'assets/images/foodgrains_atta-removebg-preview.png',
      createdOn: DateTime(2022, 2, 18),
    ),
    Category(
      id: 2,
      name: 'Fruits & Vegetables',
      image: 'assets/images/fruits_veggies-removebg-preview.png',
      createdOn: DateTime(2022, 2, 18),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Categories'),
      drawer: commonDrawer(context),
      body: Padding(
        padding:
        const EdgeInsets.only(top: 30, bottom: 30, left: 15, right: 15),
        child: Container(
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
                                context, AppRoutes.categoryAddScreen);
                          });
                        },
                        child: const Text(
                          "+ Add New Category",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
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

                    DataColumn(label: Text('Created On',style: TextStyle(color: Colors.orange),)),
                    DataColumn(label: Text('Edit',style: TextStyle(color: Colors.orange),)),
                    DataColumn(label: Text('Delete',style: TextStyle(color: Colors.orange),)),
                  ],
                  rows: category
                      .map(
                        (Category) => DataRow(cells: [
                      DataCell(Text(Category.id.toString())),
                      DataCell(Text(Category.name)),
                      DataCell(Image.asset(Category.image)),
                      DataCell(Text(Category.createdOn.toString())),
                      DataCell(IconButton(
                        icon: const Icon(Icons.edit,color: Colors.orange,),
                        onPressed: () {
                          setState(() {
                            Navigator.pushNamed(context, AppRoutes.categoriesEditScreen);
                          });
                          // Handle edit action
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
      )
    );
  }
}
