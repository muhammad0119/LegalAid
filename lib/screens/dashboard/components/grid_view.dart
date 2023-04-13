import 'package:flutter/material.dart';
import '../../../components/section.dart';

class GridSection extends StatefulWidget {
  const GridSection({Key? key}) : super(key: key);

  @override
  State<GridSection> createState() => _GridSectionState();
}

class _GridSectionState extends State<GridSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Section(
                    title: 'Case(s) Number',
                    value: 3,
                    headercolor: Colors.green),
                const SizedBox(width: 10),
                Section(
                    title: 'Consultation(s)',
                    value: 0,
                    headercolor: Colors.green),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                Section(
                    title: 'Session(s) Number',
                    value: 3,
                    headercolor: Colors.red),
                const SizedBox(width: 10),
                Section(
                    title: 'Total Amounts', value: 0, headercolor: Colors.red),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Expanded(
            child: Row(
              children: [
                Section(title: 'Payments', value: 0, headercolor: Colors.green),
                const SizedBox(width: 10),
                Section(title: 'Remains', value: 0, headercolor: Colors.green),
              ],
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
