import 'package:flutter/material.dart';

import '../../../common/appbar.dart';
import '../../../common/drawer.dart';
import 'components/model_feedback.dart';

class FeedbackScreen extends StatefulWidget {
  const FeedbackScreen({super.key});

  @override
  State<FeedbackScreen> createState() => _FeedbackScreenState();
}

class _FeedbackScreenState extends State<FeedbackScreen> {
  final List<UserFeedback> users = [
    UserFeedback(
      userId: 1,
      emailId: 'gopi@gmail.com',
      feedback: 'Great service!',
    ),
    // Add more users as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: commonAppbar(title: 'Feedback'),
        drawer: commonDrawer(context),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
            child: Column(
              children: [
                DataTable(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.orange),
                  ),
                  columns:const  [
                    DataColumn(label: Text('User ID',style: TextStyle(color: Colors.orange),)),
                    DataColumn(label: Text('Email ID',style: TextStyle(color: Colors.orange),)),
                    DataColumn(label: Text('Feedback',style: TextStyle(color: Colors.orange),)),
                  ],
                  rows: users
                      .map(
                        (UserFeedback) => DataRow(
                          cells: [
                            DataCell(Text(UserFeedback.userId.toString())),
                            DataCell(Text(UserFeedback.emailId)),
                            DataCell(Text(UserFeedback.feedback)),
                          ],
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ),
        ));
  }
}
