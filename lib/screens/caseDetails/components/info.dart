import 'package:flutter/material.dart';
import '../../../components/section.dart';
import '../components/castom_label.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, right: 6, left: 6),
      child: Column(children: [
        Container(
          height: 100,
          child: Row(
            children: [
              Section(
                  headercolor: Colors.green, title: 'Case Amount', value: 200),
              const SizedBox(
                width: 6,
              ),
              Section(headercolor: Colors.red, title: 'Payments', value: 200),
              const SizedBox(
                width: 6,
              ),
              Section(headercolor: Colors.green, title: 'Remain', value: 0),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          child: Column(
            children: [
              CastomLabel(
                boxwith: 0,
                lefttext: 'Case Code :',
                righttext: '45254/2022',
                bgcolor: Colors.grey,
              ),
              CastomLabel(
                lefttext: 'Case number :',
                righttext: 'text',
              ),
              CastomLabel(
                lefttext: 'Type :',
                righttext: 'text',
              ),
              CastomLabel(
                lefttext: 'Status :',
                righttext: 'text',
              ),
              CastomLabel(
                lefttext: 'Circule :',
                righttext: 'text',
              ),
              CastomLabel(
                lefttext: 'Court :',
                righttext: 'text',
              ),
              CastomLabel(
                boxwith: 0,
                lefttext: 'Client info :',
                bgcolor: Colors.grey,
              ),
              CastomLabel(
                lefttext: 'Name',
                righttext: 'sami',
              ),
              CastomLabel(
                lefttext: 'Phone',
                righttext: '96458569',
              ),
              CastomLabel(
                lefttext: 'Email',
                righttext: 'exemple@gmail.com',
              ),
              CastomLabel(
                lefttext: 'Address',
                righttext: 'kessrine sbeitla',
              ),
            ],
          ),
        )
      ]),
    );
  }
}
