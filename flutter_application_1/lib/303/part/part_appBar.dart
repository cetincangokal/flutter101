part of './part_of_learn.dart';

class _PartofAppBar extends StatelessWidget  with PreferredSizeWidget{
  const _PartofAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('a'),
      actions: [IconButton(onPressed: () {}, icon: Icon(Icons.abc_rounded))],
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}