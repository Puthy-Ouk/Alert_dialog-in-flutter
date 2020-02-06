
import 'package:alert_dialog/user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() => runApp(Modal());
class Modal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Users(),
 
    );
  }
}