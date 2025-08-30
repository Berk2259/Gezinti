import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/mekan_model.dart';
import 'package:gezinti/Model/ulke_sehir_model.dart';
import 'package:gezinti/Widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

//Her Şehirdeki Her bir mekan için ilgili kısım burada bulunur
class SehirMekanDetail extends StatelessWidget {
  final MekanModel mekan;
  const SehirMekanDetail({super.key, required this.mekan});

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
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton.icon(
                onPressed:
                    (mekan.enlem != null && mekan.boylam != null)
                        ? () => _openGoogleMaps(mekan.enlem!, mekan.boylam!)
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
