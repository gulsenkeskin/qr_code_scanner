import 'package:flutter/material.dart';
import 'package:qr_code_scanner/screens/qr_code_generator.dart';
import 'package:qr_code_scanner/screens/qr_code_scanner.dart';

class BarCodeScreen extends StatefulWidget {
  const BarCodeScreen({Key? key}) : super(key: key);

  @override
  _BarCodeScreenState createState() => _BarCodeScreenState();
}

class _BarCodeScreenState extends State<BarCodeScreen> {
  int _selectedIndex = 0;
 List<Widget> _widgetOptions = <Widget>[QrCodeScanner(), QrCodeGenerator()];


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(_selectedIndex==0 ? "QR Code Scanner" : "QR Code Generator",),
        backgroundColor: Colors.black45,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xFF313131),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code_scanner),
              label: 'Scan Qr code',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.qr_code),
              label: 'Create Qr Code',
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          unselectedItemColor: Colors.white,
          selectedItemColor:Colors.purpleAccent,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}
