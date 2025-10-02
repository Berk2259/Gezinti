import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Kendi özelleştirdiğim appBar burada bulunuyor.
class AppbarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String text;
  final IconButton? button;
  AppbarWidget({super.key, required this.text, this.button});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(color: ColorWidget.white),
      backgroundColor: ColorWidget.blue900,
      centerTitle: true,
      title: Text(text, style: TextStyle(color: ColorWidget.white)),
      actions: [
        Padding(padding: const EdgeInsets.only(right: 16.0), child: button),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
