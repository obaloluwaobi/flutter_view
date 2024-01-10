import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FadeIn(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Gridview',
                  style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontSize: 27,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: FadeIn(
            child: GridView.count(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              crossAxisCount: 2,
              children: [
                Container(
                  color: Colors.green,
                ),
                Container(
                  color: Colors.indigo,
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.deepPurple,
                ),
                Container(
                  color: Colors.orange,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
