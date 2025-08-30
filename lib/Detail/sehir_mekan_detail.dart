import 'package:flutter/material.dart';
import 'package:gezinti/Model/mekan_model.dart';
import 'package:gezinti/Widget/widget.dart';

//Her Şehirdeki Her bir mekan için ilgili kısım burada bulunur
class SehirMekanDetail extends StatelessWidget {
  final MekanModel mekan;
  const SehirMekanDetail({super.key, required this.mekan});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: mekan.mekanIsim),
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
