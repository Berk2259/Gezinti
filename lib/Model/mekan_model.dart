//Her şehirdeki mekanların detay özellikleri burada tanımlanıyor daha sonra bu özellikler ulke_sehir_model da kullanılıyor

import 'package:flutter/material.dart';

class MekanModel {
  final String mekanIsim;
  final String mekanAciklama;
  final String? mapsUrl;
  final Icon tags;
  final String? mekanDetayAciklama;
  final List<String>? mekanTarihce;
  final List<String>? mekanGunumuzde;
  final List<String>? mekanOnemi;
  final List<String>? mekanFotolar;
  MekanModel({
    required this.mekanIsim,
    required this.mekanAciklama,
    this.mapsUrl,
    required this.tags,
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
      tags: Icon(
        Icons.place,
      ), // json'dan direkt Icon alamayız, default verebiliriz
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
