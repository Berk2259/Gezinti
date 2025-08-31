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
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(
        text: sehir.sehirIsim,
        button: IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialogWidget();
              },
            );
          },
          icon: Icon(FontAwesomeIcons.circleInfo),
        ),
      ),
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
        child: Column(
          children: [
            Expanded(
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
                                Padding(
                                  padding: const EdgeInsets.only(
                                    top: 8.0,
                                    bottom: 4.0,
                                  ),
                                  child: Text(
                                    sehir.mekanlar[index].mekanIsim,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
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
          ],
        ),
      ),
    );
  }
}
