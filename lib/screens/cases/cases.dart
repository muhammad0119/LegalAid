import 'package:flutter/material.dart';
import '../cases/components/body.dart';

class Cases extends StatelessWidget {
  const Cases({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cases'),
      ),
      body:Body(),
    );
  }
}
