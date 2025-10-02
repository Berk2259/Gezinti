import 'package:flutter/material.dart';
import 'package:gezinti/GenelDetail/genel_detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';
import 'package:gezinti/Container/container.dart';
import 'package:gezinti/Service/service.dart';

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
          color: ColorWidget.blue200,
        ),
        child: FutureBuilder<List<UlkeSehirModel>>(
          future: DataService().loadJsonData(),
          builder: (context, snapshot) {
            final List<UlkeSehirModel> tumSehirler = snapshot.data ?? [];
            // 1) Önce ülke kodu ile filtrele
            List<UlkeSehirModel> sehirler =
                tumSehirler.where((s) => s.ulkeKodu == 'TR').toList();
            return ListView.builder(
              itemCount: sehirler.length,
              itemBuilder: (context, index) {
                final sehir = sehirler[index];
                return TurkeyDetailContainer(
                  ozellikSehir: sehir,
                  onPressedButton: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SehirDetail(sehir: sehir),
                      ),
                    );
                  },
                );
              },
            );
          },
        ),
      ),
    );
  }
}
