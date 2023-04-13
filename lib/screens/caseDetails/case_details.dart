import 'package:flutter/material.dart';
import '../caseDetails/components/info.dart';
class CaseDetails extends StatelessWidget {
  const CaseDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Case Details'),
          bottom:const TabBar(tabs: [
            Tab(
              text: 'Info',
            ),
             Tab(
              text: 'Parties',
            ),
             Tab(
              text: 'Sessions',
            ),
             Tab(
              text: 'Docs',
            ),
          ]),
        ),
        body:const TabBarView(
          children: [
            Info(),
            Center(child: Text('Empty'),),
            Center(child: Text('Empty'),),
            Center(child: Text('Empty'),),
          ],
        ),
        
      ),
    );
  }
}
