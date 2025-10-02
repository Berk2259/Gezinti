import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/GenelDetail/genel_detail.dart';
import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';

class DetayButtonWidget extends StatelessWidget {
  final MekanModel mekan;
  const DetayButtonWidget({super.key, required this.mekan});

  //Detay button burada tanımlandı
  @override
  Widget build(BuildContext context) {
    return Padding(
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
              builder: (context) => SehirMekanDetail(mekan: mekan),
            ),
          );
        },
        icon: Icon(FontAwesomeIcons.info),
        label: Text('Detay', style: TextStyle(color: ColorWidget.white)),
        style: ElevatedButton.styleFrom(
          iconColor: ColorWidget.white,
          backgroundColor: ColorWidget.blue900,
          minimumSize: Size(double.infinity, 35),
        ),
      ),
    );
  }
}
