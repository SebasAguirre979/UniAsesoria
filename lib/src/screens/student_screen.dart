import 'package:flutter/material.dart';

class StudentScreen extends StatelessWidget {
  final String _username;
  const StudentScreen(this._username, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Estudiante")),
        body: Center(
          child: Text(_username),
        ));
  }
}
