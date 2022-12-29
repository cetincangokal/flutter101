import 'package:flutter/material.dart';

class tabLearn extends StatefulWidget {
  const tabLearn({super.key});

  @override
  State<tabLearn> createState() => _tabLearnState();
}

class _tabLearnState extends State<tabLearn> with TickerProviderStateMixin{
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        extendBody: true,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton( 
          onPressed: () {
            _tabController.animateTo(0);
          },
        ),
        bottomNavigationBar: BottomAppBar(
          notchMargin: 10,
          shape: CircularNotchedRectangle(),
          child: TabBar(
            controller: _tabController,
            tabs: [
            Tab(
              text: 'Page 1',
            ),
            Tab(
              text: 'Page2',
            ),
          ]),
        ),
        appBar: AppBar(
          
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.green,
          ),
        ]),
      ),
    );
  }
}
