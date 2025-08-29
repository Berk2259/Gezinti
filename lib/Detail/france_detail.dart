import 'package:flutter/material.dart';
import 'package:gezinti/Detail/detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/UlkeContainer/ulke_container.dart';
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
          color: ColorWidget.white,
        ),
        child: Column(
          children: [
            DigerUlkelerDetailContainer(
              ozellikSehir: paris,
              onPressedButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SehirDetail(sehir: paris),
                  ),
                );
              },
            ),
            DigerUlkelerDetailContainer(
              ozellikSehir: lille,
              onPressedButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SehirDetail(sehir: lille),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
