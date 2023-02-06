import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/cache/shared_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedLearn extends StatefulWidget {
  const SharedLearn({super.key});

  @override
  State<SharedLearn> createState() => _SharedLearnState();
}

class _SharedLearnState extends LoadingStatefull<SharedLearn> {
  int _currentValue = 0;
  late final SharedManager _manager;
  late final List<User> userItems;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _manager = SharedManager();
    userItems = UserItems().users;
    _initialize();
  }

  Future<void> _initialize() async {
    changeLoading();
    await _manager.init();
    changeLoading();
    getDefaultValues();
  }

  Future<void> getDefaultValues() async {
    _onChangeValue(_manager.getString(SharedKeys.counter) ?? '');
  }

  void _onChangeValue(String value) {
    final _value = int.tryParse(value);
    if (_value != null) {
      setState(() {
        _currentValue = _value;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentValue.toString()),
        actions: [
          isLoading
              ? Center(
                  child: CircularProgressIndicator(
                  color: Theme.of(context).scaffoldBackgroundColor,
                ))
              : SizedBox.shrink()
        ],
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          _saveValueButton(),
          _removeValueButton(),
        ],
      ),
      body: Column(
        children: [
          TextField(
            onChanged: (value) {
              _onChangeValue(value);
            },
          ),
          Expanded(child: _userListView())
        ],
      ),
    );
  }

  FloatingActionButton _saveValueButton() {
    return FloatingActionButton(
      child: Icon(Icons.save),
      onPressed: (() async {
        changeLoading();
        await _manager.saveString(SharedKeys.counter, _currentValue.toString());
        changeLoading();
      }),
    );
  }

  FloatingActionButton _removeValueButton() {
    return FloatingActionButton(
        child: Icon(Icons.remove),
        onPressed: (() async {
          changeLoading();
          await _manager.removeItem(SharedKeys.counter);
          changeLoading();
        }));
  }
}

class _userListView extends StatelessWidget {
  _userListView({
    Key? key,
  }) : super(key: key);
  final List<User> users = UserItems().users;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: users.length,
        itemBuilder: ((BuildContext context, int index) {
          return Card(
            child: ListTile(
              title: Text(users[index].name),
              subtitle: Text(
                users[index].description,
              ),
              trailing: Text(users[index].url, style: Theme.of(context).textTheme.subtitle1?.copyWith(decoration: TextDecoration.underline)),
            ),
          );
        }));
  }
}

abstract class LoadingStatefull<T extends StatefulWidget> extends State<T> {
  bool isLoading = false;

  void changeLoading() {
    setState(() {
      isLoading = !isLoading;
    });
  }
}

class User {
  final String name;
  final String description;
  final String url;

  User(this.name, this.description, this.url);
}

class UserItems {
  late final List<User> users;
  UserItems() {
    users = [
      User('Çetin', '14', 'cetin/14'),
      User('Merve', '25', 'merve/25'),
      User('Selin', '07', 'selin/07'),
    ];
  }
}
