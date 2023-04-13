import 'package:flutter/material.dart';
import '../auth/components/body.dart';
class Auth extends StatelessWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body() ,
    );
  }
}