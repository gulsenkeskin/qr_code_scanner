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
        minimumSize: Size(MediaQuery.of(context).size.width/3, 60),
          textStyle: const TextStyle(fontSize: 25), primary: Colors.purple[200]),);
}
