import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/random_image.dart';

class listTileLearn extends StatelessWidget {
  listTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  title: const RandomImage(),
                  //dense: true,
                  onTap: () {},
                  subtitle: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('How do you use your card'),
                  ),
                  leading: Container(
                      height: 200,
                      width: 20,
                      alignment: Alignment.bottomCenter,
                      child: Icon(
                        Icons.money,
                        size: 30,
                        color: Colors.white,
                      )),
                  trailing: Container(
                    width: 20,
                    child: Container(
                        height: 200,
                        width: 20,
                        alignment: Alignment.bottomCenter,
                        child: Icon(
                          Icons.chevron_right,
                          size: 30,
                          color: Colors.white,
                        )),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
