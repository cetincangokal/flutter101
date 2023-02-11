import 'dart:developer';

import 'package:flutter/material.dart';

class alertLearn extends StatefulWidget {
  const alertLearn({super.key});

  @override
  State<alertLearn> createState() => _alertLearnState();
}

class _alertLearnState extends State<alertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        final response = await showDialog(
            context: context,
            //barrierDismissible: false, // ekrana basınca kapanmayı engeller
            builder: (context) {
              return _ImageZoomDialog();
            });
        inspect(response);
      }),
    );
  }
}

// class _UpdateDialog extends StatelessWidget {
//   const _UpdateDialog({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       title: Text('Version update!'),
//       actions: [
//         ElevatedButton(
//             onPressed: () {
//               Navigator.pop(context, true);
//             },
//             child: Text('Update')),
//         TextButton(
//             onPressed: () {
//               Navigator.pop(context);
//             },
//             child: Text('close'))
//       ],
//     );
//   }
// }

//daha performanslı bir kullanım enheritance ın gücünü kullan
class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          title: Text(Keys.versionUpdate),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: Text(Keys.updateText)),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(Keys.closeTxt))
          ],
        );
}

class Keys {
  static const versionUpdate = 'Version Update!';
  static const updateText = 'Update';
  static const closeTxt = 'Close';
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    super.key,
  });
  final String _url = 'https://picsum.photos/200';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          _url,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}
