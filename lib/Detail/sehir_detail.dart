import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

//Her şehir için oraya ait yerlerin yapısal özellikleri burada tanımlandı
class SehirDetail extends StatelessWidget {
  final UlkeSehirModel sehir;
  const SehirDetail({super.key, required this.sehir});

  Future<void> _openGoogleMaps(double lat, double lng) async {
    final Uri googleUrl = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=$lat,$lng',
    );

    if (await canLaunchUrl(googleUrl)) {
      await launchUrl(googleUrl, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('URL açılamıyor: $googleUrl');
    }
  }

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
                color: Colors.blue.shade900,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.white,
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
                      style: TextStyle(fontSize: 24, color: Colors.white),
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
                  color: Colors.blue.shade900,
                ),
                child: ListView.builder(
                  padding: const EdgeInsets.only(bottom: 16.0),
                  itemCount: sehir.gezilecekYerler.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                          color: Colors.white,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ListTile(
                              title: Text(
                                sehir.gezilecekYerler[index],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              subtitle: Text(
                                sehir.aciklamalar[index],
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ElevatedButton.icon(
                                onPressed: (index < sehir.enlem.length && index < sehir.boylam.length)
                                    ? () => _openGoogleMaps(
                                          sehir.enlem[index],
                                          sehir.boylam[index],
                                        )
                                    : null,
                                label: Text(
                                  'Konum',
                                  style: TextStyle(color: Colors.white),
                                ),
                                icon: Icon(FontAwesomeIcons.locationDot),
                                style: ElevatedButton.styleFrom(
                                  iconColor: Colors.white,
                                  backgroundColor: Colors.blue.shade900,
                                  disabledBackgroundColor: Colors.blue.shade200,
                                  disabledForegroundColor: Colors.white70,
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
