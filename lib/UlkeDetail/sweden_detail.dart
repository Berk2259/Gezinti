import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//İsveçteki şehirler burada bulunur
class SwedenDetail extends StatelessWidget {
  const SwedenDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'İsveç'),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: ColorWidget.blue200,
        ),
      ),
    );
  }
}
