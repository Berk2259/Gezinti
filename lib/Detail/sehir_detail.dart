import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Detail/detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';

//Her şehir için oraya ait yerlerin yapısal özellikleri burada tanımlandı
class SehirDetail extends StatelessWidget {
  final UlkeSehirModel sehir;
  const SehirDetail({super.key, required this.sehir});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(text: sehir.sehirIsim),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              width: double.infinity,
              height: 120,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: ColorWidget.blue900,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: ColorWidget.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(FontAwesomeIcons.fire),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Gezilecek Yerler',
                      style: TextStyle(fontSize: 24, color: ColorWidget.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: ColorWidget.blue900,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  itemCount: sehir.mekanlar.length,
                  itemBuilder: (context, index) {
                    final mekan = sehir.mekanlar[index];
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: ColorWidget.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Row(
                                children: [
                                  Text(
                                    sehir.mekanlar[index].mekanIsim,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Spacer(),
                                  mekan.tags,
                                ],
                              ),
                              subtitle: Text(
                                sehir.mekanlar[index].mekanAciklama,
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 8.0,
                                left: 16.0,
                                bottom: 16.0,
                                right: 16.0,
                              ),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder:
                                          (context) =>
                                              SehirMekanDetail(mekan: mekan),
                                    ),
                                  );
                                },
                                icon: Icon(FontAwesomeIcons.info),
                                label: Text(
                                  'Detay',
                                  style: TextStyle(color: ColorWidget.white),
                                ),
                                style: ElevatedButton.styleFrom(
                                  iconColor: ColorWidget.white,
                                  backgroundColor: ColorWidget.blue900,
                                  minimumSize: Size(double.infinity, 35),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
