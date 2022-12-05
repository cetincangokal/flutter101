import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        SizedBox(
          height: 300,
          width: 300,
          child: PngImage(path: ImageItem().appleBook),
        ),
        SizedBox(
          height: 200,
          width: 200,
          child: Image.network('https://cdn-icons-png.flaticon.com/512/4/4259.png',
          errorBuilder: (context, error, stackTrace) => const Icon(Icons.abc_outlined),
          )),
      ]),
    );
  }
}

class ImageItem {
  final String appleBook = "appleBook";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.path});
  final String path;

  @override
  Widget build(BuildContext context) {
    return Image.asset(_nameWithPng, fit: BoxFit.cover);
  }

  String get _nameWithPng => 'assets/png/$path.png';
}
