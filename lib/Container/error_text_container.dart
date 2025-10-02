import 'package:flutter/material.dart';
import 'package:gezinti/Widget/widget.dart';

//Fotoğraflar yüklenmediği zaman internet olmadığı hata yapısı burada tanımlandı
class ErrorTextContainer extends StatelessWidget {
  const ErrorTextContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorWidget.grey200,
      alignment: Alignment.center,
      child: Text(
        'İnternet Yok',
        style: TextStyle(fontSize: 16),
        textAlign: TextAlign.center,
      ),
    );
  }
}
