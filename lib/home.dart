import 'package:animate_do/animate_do.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_view/widgets/gridview.dart';
import 'package:flutter_view/widgets/listview.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff111214),
      appBar: AppBar(
        backgroundColor: const Color(0xff09304f),
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _selected = !_selected;
                  if (kDebugMode) {
                    print('click');
                  }
                });
              },
              icon: Icon(_selected ? Icons.view_list : Icons.grid_view_rounded,
                  color: Colors.white)),
        ],
      ),
      body: _selected ? const GridPage() : const ListPage(),
    );
  }
}
