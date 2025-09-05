import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

//Her Şehirdeki Her bir mekan için ilgili kısım burada bulunur
class SehirMekanDetail extends StatelessWidget {
  final MekanModel mekan;
  const SehirMekanDetail({super.key, required this.mekan});

  Future<void> _openGoogleMaps(String mapsUrl) async {
    final Uri googleUrl = Uri.parse(mapsUrl);

    if (await canLaunchUrl(googleUrl)) {
      await launchUrl(googleUrl, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('URL açılamıyor: $googleUrl');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorWidget.blue900,
      appBar: AppbarWidget(text: mekan.mekanIsim),
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white,
                  ),
                  child: ListView(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          mekan.mekanAciklama ?? '',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.landmarkDome),
                            SizedBox(width: 16.0),
                            Text(
                              'Tarihçe',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          (mekan.mekanTarihce ?? []).join('\n'),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.city),
                            SizedBox(width: 16.0),
                            Text(
                              'Günümüzde',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          (mekan.mekanGunumuzde ?? []).join('\n'),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.earthEurope),
                            SizedBox(width: 16.0),
                            Text(
                              'Önemi',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          (mekan.mekanOnemi ?? []).join('\n'),
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      // fotoğraf kısmı burada
                      GridView.builder(
                        //liste uzunluğuna göre hücreleri üretir
                        shrinkWrap: true, //içeriğe göre boyut almayı sağlar
                        physics: NeverScrollableScrollPhysics(),
                        itemCount:
                            mekan.mekanFotolar?.length ??
                            0, //girdte kaç hücre olacağını belirler
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, //her satırda 2 sütun olacak
                          crossAxisSpacing: 4, //sütunlar arası boşluk 8 px
                          mainAxisSpacing: 4, //satırlar arası boşluk 8 px
                        ),
                        itemBuilder: (context, index) {
                          final foto = mekan.mekanFotolar![index];
                          return GestureDetector(
                            //Resmi tıklanabilir yapıyor
                            onTap: () {
                              showDialog(
                                //resmi overlay olarak tam ekran açıyor
                                context: context,
                                builder:
                                    (_) => Dialog(
                                      backgroundColor: Colors.transparent,
                                      child: InteractiveViewer(
                                        //zoom ve sürükleme de ekliyor
                                        panEnabled: true, //resmi sürükleme
                                        minScale: 1, //minimum zoom
                                        maxScale: 4, //maksimum zoom
                                        child: Image.network(
                                          foto,
                                          fit:
                                              BoxFit
                                                  .contain, //resmi orantılı şekilde büyütüyor
                                        ),
                                      ),
                                    ),
                              );
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(
                                left: 8.0,
                                right: 8.0,
                                bottom: 8.0,
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.network(foto, fit: BoxFit.cover),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 32.0,
                right: 32.0,
                bottom: 32.0,
              ),
              child: ElevatedButton.icon(
                onPressed:
                    (mekan.mapsUrl != null && mekan.mapsUrl!.isNotEmpty)
                        ? () => _openGoogleMaps(mekan.mapsUrl!)
                        : null,
                label: Text(
                  'Konum',
                  style: TextStyle(color: ColorWidget.white, fontSize: 20),
                ),
                icon: Icon(FontAwesomeIcons.locationDot),
                style: ElevatedButton.styleFrom(
                  backgroundColor: ColorWidget.blue900,
                  iconSize: 20,
                  iconColor: ColorWidget.white,
                  minimumSize: Size(double.infinity, 50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
