import 'package:ali_haider_project/models/notification.dart';
import 'package:flutter/material.dart';

class DynamicListViewDemo extends StatelessWidget {
  DynamicListViewDemo({super.key});

  List<NotificationModel> notificationList = [
    NotificationModel(
        title: 'First Notification',
        description: 'First Description',
        time: '12:40 PM'),
    NotificationModel(
        title: 'Second Notification',
        description: 'Second Description',
        time: '11:40 PM'),
    NotificationModel(
        title: 'Third Notification',
        description: 'Third Description',
        time: '1:40 PM'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Dynamic List View Demo"),
        ),
        body: ListView.builder(
            itemCount: notificationList.length,
            itemBuilder: (context, i) {
              return ListTile(
                leading: Icon(Icons.notifications),
                title: Text(notificationList[i].title.toString()),
                subtitle: Text(notificationList[i].description.toString()),
                trailing: Text(notificationList[i].time.toString()),
                // tileColor: Colors.blue,
              );
            }));
  }
}
