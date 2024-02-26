import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/drawer.dart';
import 'components/model_user.dart';


class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  final List<User> users = [
    User(
      userId: 1,
      userName: 'Gopi Patel',
      emailId: 'gopi@gmail.com',
      mobileNumber: '90878645638',
      dateOfBirth: '2000-01-01',
      gender: 'Female',
      address: 'Nana Varachha, Surat',
    ),
    // Add more users as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(title: 'Users'),
      drawer:commonDrawer(context),
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
                  DataColumn(label: Text('User ID',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('User Name',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Email ID',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Mobile Number',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Date of Birth',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Gender',style: TextStyle(color: Colors.orange),)),
                  DataColumn(label: Text('Address',style: TextStyle(color: Colors.orange),)),
                ],
                rows: users
                    .map(
                      (user) => DataRow(
                    cells: [
                      DataCell(Text(user.userId.toString())),
                      DataCell(Text(user.userName)),
                      DataCell(Text(user.emailId)),
                      DataCell(Text(user.mobileNumber)),
                      DataCell(Text(user.dateOfBirth)),
                      DataCell(Text(user.gender)),
                      DataCell(Text(user.address)),
                    ],
                  ),
                )
                    .toList(),
              ),
            ],
          ),
        ),
      )
    );
  }
}
