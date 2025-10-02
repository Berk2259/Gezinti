import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gezinti/Model/model.dart';

//Şehirlerin içindeki ana başlıkların yapısı burada oluşturuldu 
class SehirDetailBaslikWidget extends StatelessWidget {
  final SehirDetailBaslikModel baslik;
  const SehirDetailBaslikWidget({super.key, required this.baslik});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0),
      child: Row(
        children: [
          Icon(FontAwesomeIcons.earthEurope),
          SizedBox(width: 16.0),
          Text(
            baslik.DetailBaslik,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
