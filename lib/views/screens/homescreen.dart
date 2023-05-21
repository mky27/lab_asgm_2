import 'package:flutter/material.dart';
import 'package:lab_asgm_2/models/user.dart';

class HomeScreen extends StatefulWidget {
  final User user;
  const HomeScreen({super.key, required this.user});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String maintitle = "BarterIt";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle, 
        style: const TextStyle(fontWeight: FontWeight.w100))
      ),
    );
  }
}