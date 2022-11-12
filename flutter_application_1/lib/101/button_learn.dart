import 'package:flutter/material.dart';

class ButtonLearn extends StatelessWidget {
  const ButtonLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          TextButton(onPressed: (() {}), child: Text('a')),
          ElevatedButton(onPressed: () {}, child: Text('b')),
          IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded)),
          FloatingActionButton(onPressed: (() {}),
          child: const Icon(Icons.add),)
        ],
      ),
    );
  }
}

// video 3 8.28
