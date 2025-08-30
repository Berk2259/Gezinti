import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Norveçteki şehirler burada bulunur
class NorwayDetail extends StatelessWidget {
  const NorwayDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Norveç'),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: ColorWidget.white,
        ),
      ),
    );
  }
}
