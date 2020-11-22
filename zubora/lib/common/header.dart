import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('カレンダー'),
      backgroundColor: Colors.indigo,
      centerTitle: true,
      elevation: 10.0,
    );
  }
}
