import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Uygulamanın ana sayfasıdır ülkeler burada listeleniyor.
class HistoricalScreen extends StatelessWidget {
  const HistoricalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Gezinti'),
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
        child: Column(
          children: [
            TekUlkeContainerWidget(
              image: 'assets/images/turkey.png',
              ulkeAd: 'Türkiye',
              indexUlke: 0,
            ),
            TekUlkeContainerWidget(
              image: 'assets/images/france.png',
              ulkeAd: 'Fransa',
              indexUlke: 1,
            ),
            TekUlkeContainerWidget(
              image: 'assets/images/spain.png',
              ulkeAd: 'İspanya',
              indexUlke: 2,
            ),
          ],
        ),
      ),
    );
  }
}
