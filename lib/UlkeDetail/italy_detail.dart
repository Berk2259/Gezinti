import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Italyadaki şehirler bu kısımda olacak
class ItalyDetail extends StatelessWidget {
  const ItalyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'İtalya'),
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
