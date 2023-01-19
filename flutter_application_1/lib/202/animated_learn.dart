import 'package:flutter/material.dart';

const double kZero = 0;

class animatedLearn extends StatefulWidget {
  const animatedLearn({super.key});

  @override
  State<animatedLearn> createState() => _animatedLearnState();
}

class _animatedLearnState extends State<animatedLearn>
    with TickerProviderStateMixin {
//Text('data', style: context.textTheme().headline1)
  bool _isVisible = false;
  bool _isOpacity = false;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: _durationItems.durationLow);
  }

  void changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _placeHolderWidget(),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            changeVisible();
            controller.animateTo(_isVisible ? 1 : kZero);
          },
        ),
        body: Column(
          children: [
            ListTile(
              title: AnimatedOpacity(
                duration: _durationItems.durationLow,
                opacity: _isOpacity ? 1 : kZero,
                child: Text('data'),
              ),
              trailing: IconButton(
                onPressed: (() {
                  changeOpacity();
                }),
                icon: Icon(Icons.precision_manufacturing_rounded),
              ),
            ),
            AnimatedDefaultTextStyle(
                child: Text('data'),
                style: (_isVisible
                        ? context.textTheme().headline1
                        : context.textTheme().subtitle1) ??
                    TextStyle(),
                duration: _durationItems.durationLow),
            AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
            AnimatedContainer(
              duration: _durationItems.durationLow,
              height:
                  _isVisible ? kZero : MediaQuery.of(context).size.width * 0.2,
              width: MediaQuery.of(context).size.height * 0.2,
              color: Colors.blue,
              margin: EdgeInsets.all(5),
            ),
            Expanded(child: Stack(
              children: [
                AnimatedPositioned(top: 30,curve: Curves.elasticOut, child: Text('data', style: context.textTheme().headline1,), duration: _durationItems.durationLow)
              ],
            )),
            Expanded(
              child: AnimatedList(itemBuilder: (context, index, animation) {
                return Text('data');
              }),
            ) 
          ],
        ));
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
      firstChild: Placeholder(),
      secondChild: SizedBox.shrink(),
      duration: _durationItems.durationLow,
      crossFadeState:
          _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
    );
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _durationItems {
  static const durationLow = Duration(seconds: 1);
  static const durationHigh = Duration(seconds: 5);
}
