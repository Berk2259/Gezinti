//Her şehirdeki mekanların detay özellikleri burada tanımlanıyor daha sonra bu özellikler ulke_sehir_model da kullanılıyor

import 'package:flutter/material.dart';

class MekanModel {
  final String mekanIsim;
  final String mekanAciklama;
  final String? mapsUrl;
  final Color? tagColor; // Sadece renk
  final String? mekanDetayAciklama;
  final List<String>? mekanTarihce;
  final List<String>? mekanGunumuzde;
  final List<String>? mekanOnemi;
  final List<String>? mekanFotolar;
  MekanModel({
    required this.mekanIsim,
    required this.mekanAciklama,
    this.mapsUrl,
    this.tagColor,
    this.mekanDetayAciklama,
    this.mekanTarihce,
    this.mekanGunumuzde,
    this.mekanOnemi,
    this.mekanFotolar,
  });

  // JSON'dan MekanModel'e dönüştürme
  factory MekanModel.fromJson(Map<String, dynamic> json) {
    return MekanModel(
      mekanIsim: json['mekanIsim'],
      mekanAciklama: json['mekanAciklama'],
      mapsUrl: json['mapsUrl'],
      tagColor:
          json['tagsColor'] != null
              ? Color(int.parse(json['tagsColor']))
              : Colors.blue,
      mekanDetayAciklama: json['mekanDetayAciklama'],
      mekanTarihce:
          json['mekanTarihce'] != null
              ? List<String>.from(json['mekanTarihce'])
              : [],
      mekanGunumuzde:
          json['mekanGunumuzde'] != null
              ? List<String>.from(json['mekanGunumuzde'])
              : [],
      mekanOnemi:
          json['mekanOnemi'] != null
              ? List<String>.from(json['mekanOnemi'])
              : [],
      mekanFotolar:
          json['mekanFotolar'] != null
              ? List<String>.from(json['mekanFotolar'])
              : [],
    );
  }
}
