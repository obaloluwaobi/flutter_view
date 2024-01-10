import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

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
                  'Listview',
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
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  height: 150,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  width: double.infinity,
                  color: Colors.amberAccent,
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
