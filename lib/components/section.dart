import 'package:flutter/material.dart';

class Section extends StatelessWidget {
  Section(
      {Key? key,
      required this.headercolor,
      required this.title,
      required this.value})
      : super(key: key);

  Color headercolor = Colors.green;
  final String title;
  final int value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
            color: const Color.fromARGB(255, 227, 225, 225),
            child: Column(
              children: [
                Container(
                  height: 30,
                  width: double.infinity,
                  color: headercolor,
                  child: Center(child: Text(title),),
                ),
                Expanded(
                  child: Container(
                    child: Center(
                      child: Text(
                        value.toString(),
                        style:const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
