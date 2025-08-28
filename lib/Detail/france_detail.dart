import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Fransadaki şehirler burada bulunuyor
class FranceDetail extends StatelessWidget {
  const FranceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppbarWidget(text: 'Fransa'),
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
            UlkelerDetailContainerWidget(sehirAd: 'Paris'),
            UlkelerDetailContainerWidget(sehirAd: 'Lille'),
          ],
        ),
      ),
    );
  }
}
