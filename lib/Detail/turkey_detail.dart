import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Widget/turkey_detail_container_widget.dart';
import 'package:gezinti/Widget/widget.dart';

//Türkiyedeki iller burada bulunuyor
class TurkeyDetail extends StatelessWidget {
  const TurkeyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppbarWidget(text: 'Türkiye'),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: Colors.white,
        ),
        child: Column(
          children: [
            TurkeyDetailContainerWidget(ilNumara: '01', ilIsim: 'Adana'),
            TurkeyDetailContainerWidget(ilNumara: '02', ilIsim: 'Adıyaman'),
          ],
        ),
      ),
    );
  }
}
