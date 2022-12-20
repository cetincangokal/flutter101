import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _items = [
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstarct Art',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstarct Art',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstarct Art',
          price: 3.4),
      CollectionModel(
          imagePath: 'assets/png/image_collection.png',
          title: 'Abstarct Art',
          price: 3.4),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _items.length,
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.only(bottom: 20),
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Expanded(child: Image.asset(_items[index].imagePath, fit: BoxFit.cover,)),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text(_items[index].title),
                        Text('${_items[index].price} eth'),
                      ],),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final double price;

  CollectionModel(
      {required this.imagePath, required this.title, required this.price});
}
