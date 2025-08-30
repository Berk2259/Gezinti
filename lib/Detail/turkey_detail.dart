import 'package:flutter/material.dart';
import 'package:gezinti/Detail/detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';
import 'package:gezinti/Container/container.dart';

//Türkiyedeki iller burada bulunuyor
class TurkeyDetail extends StatelessWidget {
  const TurkeyDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Türkiye'),
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
            TurkeyDetailContainer(
              ozellikSehir: adana,
              onPressedButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SehirDetail(sehir: adana),
                  ),
                );
              },
            ),
            TurkeyDetailContainer(
              ozellikSehir: adiyaman,
              onPressedButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SehirDetail(sehir: adiyaman),
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
