import 'package:flutter/material.dart';
import 'package:gezinti/GenelDetail/genel_detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Container/container.dart';
import 'package:gezinti/Service/data_service.dart';
import 'package:gezinti/Widget/widget.dart';

//Fransadaki şehirler burada bulunuyor
class FranceDetail extends StatelessWidget {
  const FranceDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: 'Fransa'),
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
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(color: ColorWidget.blue900),
              );
            }
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Veri yüklenemedi',
                  style: TextStyle(color: ColorWidget.white),
                ),
              );
            }
            final List<UlkeSehirModel> tumSehirler = snapshot.data ?? [];
            // 1) Önce ulkeKodu ile filtrele (JSON'da varsa en basit ve sağlam yol)
            List<UlkeSehirModel> sehirler =
                tumSehirler.where((s) => s.ulkeKodu == 'FR').toList();
            // 2) Eğer JSON'da ulkeKodu yoksa, eski fallback: isim bazlı ve plaka null
            return ListView.builder(
              itemCount: sehirler.length,
              itemBuilder: (context, index) {
                final sehir = sehirler[index];
                return DigerUlkelerDetailContainer(
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
