import 'package:flutter/material.dart';
import '../appointementDetails/appointements_Details.dart';
class Appointements extends StatelessWidget {
  const Appointements({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Map<String, Map<String, Map<String, String>>> data = {
      '07/12/2021': {
        '25438': {'time': '03:44', 'details': 'Appointement details 1'},
        '25448': {'time': '11:56', 'details': 'Appointement details 2'},
      },
      '11/05/2022': {
        '21438': {'time': '04:04', 'details': 'banc'},
      }
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text('Appointements'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(5),
        child: ListView.builder(
          itemCount: data.length,
          itemBuilder: (BuildContext context, index) {
            final List<String> dates = data.keys.toList(growable: false);
            final String date = dates[index];
            final List<Map<String, String>> myvaleus =
                data[date]!.values.toList(growable: false);
            return ExpansionTile(
                title: Text(
                  date,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                children: myvaleus.map(
                  (appointement) {
                    return costomTile(context,appointement);
                  },
                ).toList());
          },
        ),
      ),
    );
  }

  ListTile costomTile(BuildContext context,Map<String, String> appointement) {
    return ListTile(
      title: Text(
        appointement['time']!,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        appointement['details']!,
      ),
      trailing: TextButton.icon(
        onPressed: () => Navigator.push(context,MaterialPageRoute(builder:(context) => const AppointementsDetails(),),),
        label: const Text(
          'Panding',
          style: TextStyle(color: Colors.red),
        ),
        icon: const Icon(
          Icons.arrow_forward,
          color: Colors.red,
        ),
      ),
    );
  }
}
