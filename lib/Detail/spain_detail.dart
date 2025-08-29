import 'package:flutter/material.dart';
import 'package:gezinti/Detail/sehir_detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/UlkeContainer/diger_ulkeler_detail_container.dart';
import 'package:gezinti/Widget/widget.dart';

//ispanyadaki şehirler burada bulunacak
class SpainDetail extends StatelessWidget {
  const SpainDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppbarWidget(text: 'İspanya'),
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
            DigerUlkelerDetailContainer(
              ozellikSehir: barcelona,
              onPressedButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SehirDetail(sehir: barcelona),
                  ),
                );
              },
            ),
            DigerUlkelerDetailContainer(
              ozellikSehir: madrid,
              onPressedButton: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SehirDetail(sehir: madrid),
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
