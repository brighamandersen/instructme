import 'package:flutter/material.dart';

class GroupRoute extends StatelessWidget {
  const GroupRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('instruct.me | Group Route'),
      ),
      body: const Center(
        child: Text(
          "Group",
        ),      
      )
    );
  }
}