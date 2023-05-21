import 'package:flutter/material.dart';
import 'package:lab_asgm_2/models/user.dart';

class ChatScreen extends StatefulWidget {
  final User user;

  const ChatScreen({super.key, required this.user});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  String maintitle = "Chat";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle)
      ),
      body: Center(
        child: Text(maintitle))
    );
  }
}