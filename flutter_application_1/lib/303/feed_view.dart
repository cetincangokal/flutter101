import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/post_model.dart';
import 'package:flutter_application_1/202/service/post_service.dart';

class feedView extends StatefulWidget {
  const feedView({super.key});

  @override
  State<feedView> createState() => _feedViewState();
}

class _feedViewState extends State<feedView>
    with AutomaticKeepAliveClientMixin {
  final IPostService _postService = PostService();
  late final Future<List<Postmodel>?> _itemsFuture;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _itemsFuture = _postService.FetchPostItemsAdvance();
  }
  @override
  Widget build(BuildContext context) {
    super.build(context);

    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          
        });
      }),
      appBar: AppBar(),
      body: FutureBuilder<List<Postmodel>?>(
        future: _itemsFuture,
        builder:
            (BuildContext context, AsyncSnapshot<List<Postmodel>?> snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return Placeholder();
            case ConnectionState.waiting:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.active:
              return Center(
                child: CircularProgressIndicator(),
              );
            case ConnectionState.done:
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: snapshot.data?.length ?? 0,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          child: ListTile(
                        title: Text(snapshot.data?[index].body ?? ''),
                      ));
                    });
              } else {
                return Placeholder();
              }
          }
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
