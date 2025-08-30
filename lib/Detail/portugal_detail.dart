import 'package:flutter/material.dart';
import 'package:gezinti/Widget/appBar_widget.dart';
import 'package:gezinti/Widget/color_widget.dart';

//Portekizin şehirleri burada bulunur
class PortugalDetail extends StatelessWidget {
  const PortugalDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Portekiz'),
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
