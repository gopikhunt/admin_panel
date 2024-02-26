import 'package:admin_panel/common/appbar.dart';
import 'package:admin_panel/common/drawer.dart';
import 'package:flutter/material.dart';

import 'components/model_order.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  List<Order> orders = [
    Order(
      orderId: 1,
      userId: 101,
      userName: 'Gopi',
      productName: 'Apple',
      totalQuantity: 2,
      totalAmount: 20.0,
      status: 'Pending',
    ),
    Order(
      orderId: 2,
      userId: 102,
      userName: 'Eshika',
      productName: 'Pineapple',
      totalQuantity: 3,
      totalAmount: 30.0,
      status: 'Completed',
    ),
    // Add more orders as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Order'),
      drawer: commonDrawer(context),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.only(top: 30,left: 10,right: 10),
          child: Column(
            children: [
              DataTable(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange)),
                columns: const [
                  DataColumn(label: Text('Order ID',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('User ID',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('User Name',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Product Name',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Total Quantity',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Total Amount',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Status',style: TextStyle(color: Colors.orange),)),
                ],
                rows: orders
                    .map(
                      (order) => DataRow(
                        cells: [
                          DataCell(Text(order.orderId.toString())),
                          DataCell(Text(order.userId.toString())),
                          DataCell(Text(order.userName)),
                          DataCell(Text(order.productName)),
                          DataCell(Text(order.totalQuantity.toString())),
                          DataCell(Text(order.totalAmount.toString())),
                          DataCell(
                            DropdownButton<String>(
                              value: order.status,
                              onChanged: (newValue) {
                                setState(() {
                                  order.status = newValue!;
                                });
                              },
                              items: <String>['Completed', 'Pending', 'Canceled']
                                  .map<DropdownMenuItem<String>>(
                                    (String value) => DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    ),
                                  )
                                  .toList(),
                            ),
                          ),
                        ],
                      ),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
