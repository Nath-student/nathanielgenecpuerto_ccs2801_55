import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Notification"),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search)), IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        DrawerButton()],
        ),body: SingleChildScrollView(
          child: Column(
            children: [Text("Today")],
          ),
          ),
        );
  }
}