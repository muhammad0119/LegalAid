import 'package:flutter/material.dart';
import '../../caseDetails/case_details.dart';

class PaymentsList extends StatefulWidget {
  const PaymentsList({Key? key}) : super(key: key);

  @override
  State<PaymentsList> createState() => _PaymentsListState();
}

class _PaymentsListState extends State<PaymentsList> {
  @override
  Widget build(BuildContext context) {
    Map<String, Map<String, Map<String, String>>> mydata = {
      '2021': {
        '25438': {
          'date': '12/05/2021',
          'description': 'this is détail',
          'time': '03:44',
          'type': 'banc'
        },
        '25448': {
          'date': '10/05/2021',
          'description': 'this is détail',
          'time': '03:44',
          'type': 'banc'
        },
        '25434': {
          'date': '01/05/2021',
          'description': 'this is détail',
          'time': '03:44',
          'type': 'banc'
        },
        '25148': {
          'date': '09/05/2021',
          'description': 'this is détail',
          'time': '03:44',
          'type': 'banc'
        }
      },
      '2022': {
        '21438': {
          'date': '01/05/2021',
          'description': 'this is détail',
          'time': '03:44',
          'type': 'banc'
        },
        '25948': {
          'date': '11/06/2021',
          'description': 'this is détail',
          'time': '03:44',
          'type': 'banc'
        }
      }
    };
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Container(
        color: const Color.fromARGB(255, 227, 225, 225),
        child: ListView.builder(
            itemCount: mydata.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (BuildContext context, int index) {
              final List<String> years = mydata.keys.toList(growable: false);
              final List<Map<String, String>> cases =
                  mydata[years[index]]!.values.toList(growable: false);
              return ExpansionTile(
                title: Text(years[index]),
                children: (cases).map((item) {
                  final List<String> caseValeus =
                      item.values.toList(growable: false);
                  return CostumTile(caseValeus: caseValeus);
                }).toList(),
              );
            }),
      ),
    );
  }
}

class CostumTile extends StatelessWidget {
  const CostumTile({
    Key? key,
    required this.caseValeus,
  }) : super(key: key);

  final List<String> caseValeus;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  caseValeus[0],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(caseValeus[1]),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  caseValeus[2],
                  style: const TextStyle(
                    color: Colors.red,
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(6),
                  child: Container(
                    color: Colors.red,
                    padding: const EdgeInsets.all(3),
                    child: Text(
                      caseValeus[3],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          TextButton(
            onPressed: () {},
            child: const Icon(Icons.arrow_forward),
          )
        ],
      ),
    );
  }
}
