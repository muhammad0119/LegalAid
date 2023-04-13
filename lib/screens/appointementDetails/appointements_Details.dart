import 'package:flutter/material.dart';

class AppointementsDetails extends StatelessWidget {
  const AppointementsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Appointement Détails')),
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          CostomLabel(lefttext: 'Appointement Date :', righttext: '17/05/2015'),
          CostomLabel(lefttext: 'Appointement Hour :', righttext: '19:00'),
          const SizedBox(
            height: 80,
          ),
          Row(
            children: [
              Expanded(
                flex: 9,
                child: Container(
                    padding: const EdgeInsets.only(left: 8),
                    alignment: Alignment.centerLeft,
                    height: 30,
                    color: Colors.red,
                    child: const Text('Notes',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ))),
              ),
              const SizedBox(
                width: 30,
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 180,
            decoration: BoxDecoration(border: Border.all()),
            alignment: Alignment.topLeft,
            margin:const EdgeInsets.all(20),
            child:const Text('Appointement details .',
                style: TextStyle(
                )),
          )
        ],
      ),
    );
  }
}

class CostomLabel extends StatelessWidget {
  String lefttext;
  String righttext;
  CostomLabel({
    Key? key,
    required this.lefttext,
    required this.righttext,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      padding: const EdgeInsets.all(3),
      child: Row(children: [
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Container(
            child: Text(
              lefttext,
              textAlign: TextAlign.left,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Expanded(
          child: Text(
            righttext,
            textAlign: TextAlign.right,
          ),
        ),
        const SizedBox(
          width: 5,
        ),
      ]),
    );
  }
}
