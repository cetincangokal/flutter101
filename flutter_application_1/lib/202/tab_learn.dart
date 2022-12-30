import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/%C4%B1con_learn.dart';
import 'package:flutter_application_1/101/%C4%B1mage_learn.dart';

class tabLearn extends StatefulWidget {
  const tabLearn({super.key});

  @override
  State<tabLearn> createState() => _tabLearnState();
}

class _tabLearnState extends State<tabLearn> with TickerProviderStateMixin {
  late final TabController _tabController;
  final double _notchedValue = 10;
  int value = 0;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _MyTabViews.values.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _MyTabViews.values.length,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            _tabController.animateTo(_MyTabViews.home.index);
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: _notchedValue,
          shape: CircularNotchedRectangle(),
          child: _tabBAr(),
        ),
        appBar: AppBar(),
        body: _tabBarView(),
      ),
    );
  }

  TabBar _tabBAr() {
    return TabBar(
            indicatorColor: Colors.white,
            labelColor: Colors.purple,
            unselectedLabelColor: Colors.white,
            onTap: (int value) {},
            controller: _tabController,
            tabs: 
              _MyTabViews.values
                  .map((e) => Tab(
                        text: '${e.name}',
                      ))
                  .toList(),
            );
  }

  TabBarView _tabBarView() {
    return TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [
            ImageLearn(),
            IconLearnView(),
            IconLearnView(),
            IconLearnView(),
          ]);
  }
}

enum _MyTabViews {
  home,
  settings,
  favourite,
  profile,
}

extension _MyTabViewExtension on _MyTabViews {
}
