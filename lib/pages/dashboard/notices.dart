import 'package:flutter/material.dart';

class Notices extends StatelessWidget {
  const Notices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('noticies'),
      ),
      body: Center(child: Text('noticies screen')),
    );
  }
}