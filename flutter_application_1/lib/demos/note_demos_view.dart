import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/101/%C4%B1mage_learn.dart';

class NoteDemos extends StatelessWidget {
  const NoteDemos({super.key});
  final _title = 'Create yout first note';
  final _description = 'Add a note';
  final _createANote = 'Create a note';
  final _ImportNote = 'Import Notes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: Padding(
        padding: PaddingItems.horizontalPadding,
        child: Column(
          children: [
            PngImage(path: ImageItem().appleBook),
            _titleWidget(title: _title),
            Padding(
              padding: PaddingItems.verticalPadding,
              child: _subTitleWidget(Title: _description * 10),
            ),
            const Spacer(),
            _createButton(context),
            TextButton(
                onPressed: () {},
                child: Text(
                  _ImportNote,
                )),
            SizedBox(height: buttonHeight.buttonNormalHeight),
          ],
        ),
      ),
    );
  }

  ElevatedButton _createButton(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: SizedBox(
          child: Center(
              child: Text(
            (_createANote),
            style: Theme.of(context).textTheme.headline5,
          )),
          height: buttonHeight.buttonNormalHeight,
        ));
  }
}

class _subTitleWidget extends StatelessWidget {
  const _subTitleWidget(
      {Key? key, this.textAlign = TextAlign.center, required this.Title})
      : super(key: key);
  final TextAlign textAlign;
  final String Title;

  @override
  Widget build(BuildContext context) {
    return Text(
      Title,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .subtitle1
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w400),
    );
  }
}

class _titleWidget extends StatelessWidget {
  const _titleWidget({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context)
          .textTheme
          .headline5
          ?.copyWith(color: Colors.black, fontWeight: FontWeight.w800),
    );
  }
}

class PaddingItems {
  static const EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  static const EdgeInsets verticalPadding =
      const EdgeInsets.symmetric(vertical: 20);
}

class buttonHeight {
  static const double buttonNormalHeight = 50;
}
