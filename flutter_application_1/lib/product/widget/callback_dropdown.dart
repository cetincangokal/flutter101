import 'package:flutter/material.dart';

import '../../303/call_back_learn.dart';

class callbackDropdown extends StatefulWidget {
  const callbackDropdown({
    Key? key,
    required this.onUserSelected,
  }) : super(key: key);

  final void Function(CallBackUser user) onUserSelected;

  @override
  State<callbackDropdown> createState() => _callbackDropdownState();
}

class _callbackDropdownState extends State<callbackDropdown> {
  CallBackUser? _user;

  void _updateUser(CallBackUser? item) {
    setState(() {
      _user = item;
    });
    if (_user != null){
      widget.onUserSelected.call(_user!);
    }
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<CallBackUser>(
        value: _user,
        items: CallBackUser.dummyUsers().map((e) {
          return DropdownMenuItem(
            child: Text(
              e.name,
              style: Theme.of(context).textTheme.headline3,
            ),
            value: e,
          );
        }).toList(),
        onChanged: (CallBackUser? callBackUser) {
          setState(() {
            _user = callBackUser;
          });
        });
  }
}
