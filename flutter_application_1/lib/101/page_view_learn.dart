import 'package:flutter/material.dart';

class pageViewLearn extends StatefulWidget {
  pageViewLearn({super.key});

  @override
  State<pageViewLearn> createState() => _pageViewLearnState();
}

class _pageViewLearnState extends State<pageViewLearn> {
  final _pageController = PageController(viewportFraction: 0.7);
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text(_currentPageIndex.toString()),
          ),
          Spacer(),
          FloatingActionButton(
            onPressed: () {
              _pageController.previousPage(duration: _durationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_left),
          ),
          FloatingActionButton(
            onPressed: () {
              _pageController.nextPage(duration: _durationUtility._durationLow, curve: Curves.slowMiddle);
            },
            child: Icon(Icons.chevron_right),
          ),
        ],
      ),
      appBar: AppBar(),
      body: PageView(
        padEnds: false,
        controller: _pageController,
        onPageChanged: _updatePageIndex,
        children: [
          Container(color: Colors.red),
          Container(color: Colors.blue),
          Container(color: Colors.grey),
        ],
      ),
    );
  }
}

class _durationUtility {
  static const _durationLow = const Duration(seconds: 1);
}
