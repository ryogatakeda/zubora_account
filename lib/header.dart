import 'package:flutter/material.dart';

class Header extends StatelessWidget with PreferredSizeWidget {
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  Widget build(BuildContext context) {
    return AppBar(
      title: Text("ホーム"),
    );
  }
}
