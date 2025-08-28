import 'package:flutter/material.dart';

//Kendi özelleştirdiğim appBar burada bulunuyor.
class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  AppbarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: Colors.white),
      backgroundColor: Colors.blue.shade900,
      centerTitle: true,
      title: Text(text, style: TextStyle(color: Colors.white)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
