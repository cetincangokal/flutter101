import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/303/reqrest_resources/extension/string_extension.dart';
import 'package:flutter_application_1/303/reqrest_resources/service/reqres_service.dart';
import 'package:flutter_application_1/303/reqrest_resources/viewModel/reqres_provider.dart';
import 'package:flutter_application_1/303/reqrest_resources/viewModel/reqres_view_model.dart';
import 'package:flutter_application_1/product/global/theme_notifier.dart';
import 'package:flutter_application_1/product/service/project_network_manager.dart';
import 'package:provider/provider.dart';

import '../model/resources_model.dart';

class reqresView extends StatefulWidget {
  const reqresView({super.key});

  @override
  State<reqresView> createState() => _reqresViewState();
}

class _reqresViewState extends State<reqresView> with ProjetcDioMixin
//class _reqresViewState extends ReqresViewModel
{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ReqResProvider(ReqresService(service)),
      builder: (context, child) {
        return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: (){
            context.read<ThemeNotifier>().changeTheme();
          }),
          appBar: AppBar(
              title: context.watch<ReqResProvider>().isLoading
                  ? CircularProgressIndicator(
                      color: Colors.amber,
                    )
                  : null),
          body: Column(
            children: [
              Selector<ReqResProvider, bool>(builder: ((context, value, child) {
                return value ? const Placeholder() : Text('data');
              }), selector: (context,provider){
                return provider.isLoading;
              }),
              Expanded(
                child: _resourceListView(
                    context, context.watch<ReqResProvider>().resources),
              ),
            ],
          ),
        );
      },
    );
  }

  ListView _resourceListView(BuildContext context, List<Data> items) {
    return ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
              color: Color(items[index].color?.colorValue ?? 0),
              child: Text(items[index].name ?? ''));
        });
  }
}
