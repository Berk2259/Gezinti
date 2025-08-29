import 'package:flutter/material.dart';
import 'package:gezinti/Widget/color_widget.dart';

//Kendi özelleştirdiğim appBar burada bulunuyor.
class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  AppbarWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorWidget.white),
      backgroundColor: ColorWidget.blue900,
      centerTitle: true,
      title: Text(text, style: TextStyle(color: ColorWidget.white)),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
