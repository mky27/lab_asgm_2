import 'package:flutter/material.dart';
import 'package:lab_asgm_2/models/user.dart';

import 'newcatchscreen.dart';

class SellScreen extends StatefulWidget {
  final User user;

  const SellScreen({super.key, required this.user});

  @override
  State<SellScreen> createState() => _SellScreenState();
}

class _SellScreenState extends State<SellScreen> {
  late List<Widget> tabchildren;
  String maintitle = "Sell";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle),
      ),
      body: const Center(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (widget.user.id != "") {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (content) => NewCatchScreen(
                            user: widget.user,
                          )));
            } else {
              ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text("Please login/register an account")));
            }
          },
          child: const Text(
            "+",
            style: TextStyle(fontSize: 32),
          )),
    );
  }
}