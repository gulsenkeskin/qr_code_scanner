import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;
  final Color color;

  const ButtonWidget({
    required this.text,
    required this.onClicked,
    required this.color,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => ElevatedButton(
      child: Text(
        text,
      ),
      onPressed: onClicked,
      style: ElevatedButton.styleFrom(
          textStyle: const TextStyle(fontSize: 25), primary: Colors.grey));
}
