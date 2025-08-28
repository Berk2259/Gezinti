import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Fransadaki şehirler burada bulunuyor
class FranceDetail extends StatelessWidget {
  const FranceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppbarWidget(text: 'Fransa'));
  }
}
