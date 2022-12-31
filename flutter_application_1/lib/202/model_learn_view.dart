import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/model_learn.dart';

class ModelLearnView extends StatefulWidget {
  const ModelLearnView({super.key});

  @override
  State<ModelLearnView> createState() => _ModelLearnViewState();
}

class _ModelLearnViewState extends State<ModelLearnView> {
  var user9 = PortModel8(body: 'a');

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    final user1 = PortModel()
      ..userId = 1
      ..body = 'cg';
    user1.body = 'hello';

    final user2 = PortModel2(1, 2, 'a', 'b');
    user2.body = 'hello';
    final user3 = PortModel3(1, 2, 'title', 'body');
    //user3.body = 'a';

    final user4 = PortModel4(userId: 1, id: 2, title: 'title', body: 'body');
    //user4.body = 'helllo';

    final user5 = PortModel5(userId: 1, id: 2, title: 'title', body: 'b');
    user5.userId;

    final user6 = PortModel6(userId: 1, id: 2, title: 'title', body: 'body');
    final user7 = PortModel7();

    //servisten data çekmek için en mantıklısı bu
    final user8 = PortModel8(body: 'a');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            user9 = user9.copyWith(title: 'cg'); 
          });
        },
      ),
      appBar: AppBar(
          title: Text(
        user9.title ?? 'Not has any data',
      )),
    );
  }
}