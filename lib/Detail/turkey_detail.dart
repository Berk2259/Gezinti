import 'package:flutter/material.dart';
import 'package:gezinti/Detail/sehir_detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';
import 'package:gezinti/UlkeContainer/ulke_container.dart';

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
            TurkeyDetailContainer(
              ozellikSehir: adana,
              onPressed: () {
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
              onPressed: () {
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
