import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Türkiyedeki iller burada bulunuyor
class TurkeyDetail extends StatelessWidget {
  const TurkeyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppbarWidget(text: 'Türkiye'));
  }
}
