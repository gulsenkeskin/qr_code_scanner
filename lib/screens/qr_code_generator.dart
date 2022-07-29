import 'dart:ffi';

import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:qr_flutter/qr_flutter.dart';

class QrCodeGenerator extends StatefulWidget {
  const QrCodeGenerator({Key? key}) : super(key: key);

  @override
  State<QrCodeGenerator> createState() => _QrCodeGeneratorState();
}

class _QrCodeGeneratorState extends State<QrCodeGenerator> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Colors.purpleAccent[50],
        body: Center(
          child: SingleChildScrollView(
            //Scroll view given to Column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                QrImage(
                  data: controller.text,
                  size: (math.min(MediaQuery.of(context).size.width,
                          MediaQuery.of(context).size.height)) /
                      1.2,
                  backgroundColor: Colors.white,
                ),
                const SizedBox(height: 40),
                buildTextField(context),
              ],
            ),
          ),
        ),
      );
  Widget buildTextField(BuildContext context) => Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        controller: controller,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        decoration: InputDecoration(
          hintText: 'Enter the data',
          hintStyle: const TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: const BorderSide(color: Colors.purpleAccent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(16),
            borderSide: BorderSide(
              color: Theme.of(context).primaryColor,
            ),
          ),
          suffixIcon: IconButton(
            color: Colors.purpleAccent,
            icon: const Icon(
              Icons.done,
              size: 30,
            ),
            onPressed: () => setState(() {}),
          ),
        ),
      ));
}
