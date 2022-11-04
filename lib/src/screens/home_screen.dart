import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String _username;
  const HomeScreen(this._username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Home")),
        body: Center(
          child: Text(_username),
        ));
  }
}
