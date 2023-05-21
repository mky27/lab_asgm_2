import 'package:flutter/material.dart';
import 'package:lab_asgm_2/models/user.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key, required User user});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late List<Widget> tabchildren;
  String maintitle = "Search";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(maintitle)
      ),
      body: SizedBox(
        child: Column(children: [const SizedBox(height: 5),
          TextField( decoration: InputDecoration(
            filled: true,
            fillColor: Colors.grey,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            prefixIcon: const Icon(Icons.search),
          ),
        ),
        ]
      )
    ));
  }
}
