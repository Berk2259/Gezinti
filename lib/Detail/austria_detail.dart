import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Avusturyadaki şehirler burada bulunur
class AustriaDetail extends StatelessWidget {
  const AustriaDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Avusturya'),
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
