import 'package:flutter/material.dart';
import '../../../components/text_label.dart';
import '../components/my_card.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);
  final Map< int,Map<String, Object>> _Cases = {
    0:{
      'code':'50128',
      //'year': DateTime.now().toString(),
      'loyerName': 'Helmi',
      'typeOfCase': 'tjarya/istenef',
      'court': 'katra',
      'circule': 'katar',
      'details': 'this is détails',
    },
    1:{
      'code':'50128',
      //'year': DateTime.now().toString(),
      'loyerName': 'salah',
      'typeOfCase': 'tjarya/istenef',
      'court': 'katra',
      'circule': 'katar',
      'details': 'this is détails very long',
    }
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding:const EdgeInsets.only(top: 8,left: 8,right: 8),
          child:const TextLabel(bgcolor: Color.fromARGB(255, 250, 248, 248), text: 'Case(s) list'),
        ),
        SizedBox(
          height: 517,
          child: ListView.builder(
            itemCount: _Cases.length,
            itemBuilder: ((context, index) => MyCard(
                  code:  _Cases[index]!['code'].toString(),
                  year: DateTime.now(),
                  loyerName: _Cases[index]!['loyerName'].toString(),
                  typeOfCase: _Cases[index]!['typeOfCase'].toString(),
                  court: _Cases[index]!['court'].toString(),
                  circule: _Cases[index]!['circule'].toString(),
                  details: _Cases[index]!['details'].toString(),
                )),
          ),
        ),
      ],
    );
  }
}
