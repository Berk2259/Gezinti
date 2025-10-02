import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';
import 'package:url_launcher/url_launcher.dart';

class KonumButtonWidget extends StatelessWidget {
  final MekanModel mekan;
  const KonumButtonWidget({super.key, required this.mekan});

  Future<void> _openGoogleMaps(String mapsUrl) async {
    final Uri googleUrl = Uri.parse(mapsUrl);

    if (await canLaunchUrl(googleUrl)) {
      await launchUrl(googleUrl, mode: LaunchMode.externalApplication);
    } else {
      debugPrint('URL açılamıyor: $googleUrl');
    }
  }

  //Konum button burada tanımlanıyor
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0, bottom: 32.0),
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
    );
  }
}
