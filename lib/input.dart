import 'package:flutter/material.dart';

class UserInputPage extends StatefulWidget {
  const UserInputPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _UserInputPageState createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  String _inputText = '';

  void _handleInputChange(String value) {
    setState(() {
      _inputText = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              onChanged: _handleInputChange,
              decoration: const InputDecoration(
                hintText: 'Enter your text here',
              ),
            ),
           const SizedBox(height: 20),
            Text(
              'You entered: $_inputText',
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
    );
  }
}
