import 'package:flutter/material.dart';
import 'grid_view.dart';
import '../../../components/text_label.dart';
import '../components/payments.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
      child: Column(children: const [
        TextLabel(
          bgcolor: Color.fromARGB(255, 252, 250, 250),
          text: 'Legal Aid consumer Area',
        ),
        SizedBox(height: 10),
        GridSection(),
        TextLabel(
          bgcolor: Color.fromARGB(255, 252, 250, 250),
          text: 'Payments Reports',
        ),
        SizedBox(height: 10),
        Expanded(
          child: PaymentsList(),
        ),
      ]),
    );
  }
}
