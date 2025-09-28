import 'package:flutter/material.dart';
import 'package:gezinti/Detail/sehir_detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Container/diger_ulkeler_detail_container.dart';
import 'package:gezinti/Service/service.dart';
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
                tumSehirler.where((s) => s.ulkeKodu == 'ES').toList();
            // 2) Eğer JSON'da ulkeKodu yoksa, eski fallback: isim bazlı ve plaka null
            if (sehirler.isEmpty) {
              final Set<String> ispanyaSehirIsimleri = {'Barcelona', 'Madrid'};
              sehirler = tumSehirler
                  .where(
                    (s) => s.sehirNumara == null &&
                        ispanyaSehirIsimleri.contains(s.sehirIsim.trim()),
                  )
                  .toList();
            }

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
