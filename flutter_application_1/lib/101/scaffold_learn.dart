import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/container_sized_box_learn.dart';

class ScaffoldLearn extends StatelessWidget {
  const ScaffoldLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scaffold samples')),
      body: const Text('Merhaba'),
      backgroundColor: Colors.blue,
      floatingActionButton: FloatingActionButton(onPressed: (() {
        showModalBottomSheet(
            context: context,
            builder: (context) => Container(
                  height: 200,
                ));
      })),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 200,
        decoration: ProjectContainerDecoration(),
        child: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'a'),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: 'b'),
        ]),
      ),
    );
  }
}
