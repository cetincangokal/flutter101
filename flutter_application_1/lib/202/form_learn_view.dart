import 'package:flutter/material.dart';

class formLearnView extends StatefulWidget {
  const formLearnView({super.key});

  @override
  State<formLearnView> createState() => _formLearnViewState();
}

class _formLearnViewState extends State<formLearnView> {
  GlobalKey<FormState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Form(
        key: _key,
        autovalidateMode: AutovalidateMode.always,
        onChanged: () {
          print('a');
        },
        child: Column(
          children: [
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            TextFormField(
              validator: FormFieldValidator().isNotEmpty,
            ),
            DropdownButtonFormField<String>(
                validator: FormFieldValidator().isNotEmpty,
                items: [
                  DropdownMenuItem(
                    child: Text('a'),
                    value: 'v',
                  ),
                  DropdownMenuItem(
                    child: Text('b'),
                    value: 'v2',
                  ),
                  DropdownMenuItem(
                    child: Text('c'),
                    value: 'v3',
                  )
                ],
                onChanged: (value) {}),
            ElevatedButton(
                onPressed: () {
                  if (_key.currentState?.validate() ?? false) {
                    print('okey');
                  }
                },
                child: Text('Save'))
          ],
        ),
      ),
    );
  }
}

class FormFieldValidator {
  String? isNotEmpty(String? data) {
    return (data?.isNotEmpty ?? false) ? null : 'Bos geçilemez';
  }
}
