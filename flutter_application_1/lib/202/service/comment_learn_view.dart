import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/service/comment_model.dart';
import 'package:flutter_application_1/202/service/post_service.dart';
class CommentLearnView extends StatefulWidget {
  const CommentLearnView({super.key, this.postId});

  final int? postId;

  @override
  State<CommentLearnView> createState() => _CommentLearnViewState();
}

class _CommentLearnViewState extends State<CommentLearnView> {
  bool _isLoading = false;
  List<SpesifikPost>? _spesifikItem;
  late final IPostService postService;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }
  void _ChangeLoadingProgress() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  void fetchItemsWithId(int postId) async{
    _ChangeLoadingProgress();
    _spesifikItem = await postService.fetchRelatedCommentWithPostId(postId);


    _ChangeLoadingProgress();
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: ListView.builder(
      itemCount: _spesifikItem?.length ?? 0,
      itemBuilder: (BuildContext context, int index){
      return Card(child: Text(_spesifikItem?[index].email ?? ''),);
    }),
    );
  }
}