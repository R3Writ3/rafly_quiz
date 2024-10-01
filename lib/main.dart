import 'package:flutter/material.dart';
import 'loginpage.dart';
import 'homepage.dart';
import 'detailpage.dart';

void main() {
  runApp(BankSampahApp());
}

class BankSampahApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bank Sampah',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/detail': (context) => DetailPage(),
      },
    );
  }
}
