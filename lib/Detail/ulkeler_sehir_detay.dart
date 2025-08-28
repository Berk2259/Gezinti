// Örnek olarak açılacak yeni sayfa
import 'package:flutter/material.dart';

//Her şehrin iç yapısı burada tanımlanıyor
class SehirDetaySayfa extends StatelessWidget {
  final String sehirAd;
  const SehirDetaySayfa({super.key, required this.sehirAd});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(sehirAd)),
      body: Center(
        child: Text(
          "$sehirAd detay sayfası",
          style: const TextStyle(fontSize: 22),
        ),
      ),
    );
  }
}
