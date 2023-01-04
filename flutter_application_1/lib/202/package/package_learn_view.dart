import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/package/loadingBar.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({super.key});

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor:
              Theme.of(context).buttonTheme.colorScheme?.onPrimary),
      body: Column(
        children: [
          Text(
            'data',
            style: Theme.of(context).textTheme.subtitle1,
          ),
          loadingBar(),
        ],
      ),
    );
  }
}
