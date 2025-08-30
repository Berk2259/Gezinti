import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Bulgaristandaki şehirler burada bulunur
class BulgariaDetail extends StatelessWidget {
  const BulgariaDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Bulgaristan'),
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
