//Her şehirdeki mekanların detay özellikleri burada tanımlanıyor daha sonra bu özellikler ulke_sehir_model da kullanılıyor

import 'package:flutter/material.dart';

class MekanModel {
  int? id; // SQLite için otomatik artan id
  final String mekanIsim;
  final String mekanAciklama;
  final String? mapsUrl;
  final Color? tagColor; // Sadece renk
  final List<String>? mekanTarihce;
  final List<String>? mekanFotolar;
  MekanModel({
    this.id,
    required this.mekanIsim,
    required this.mekanAciklama,
    this.mapsUrl,
    this.tagColor,
    this.mekanTarihce,
    this.mekanFotolar,
  });

  factory MekanModel.fromJson(Map<String, dynamic> json) {
    return MekanModel(
      id: json['id'],
      mekanIsim: json['mekanIsim'],
      mekanAciklama: json['mekanAciklama'],
      mapsUrl: json['mapsUrl'],
      tagColor: json['tagsColor'],
      mekanTarihce: List<String>.from(json['mekanTarihce']),
      mekanFotolar: List<String>.from(json['mekanFotolar']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'mekanIsim': mekanIsim,
      'mekanAciklama': mekanAciklama,
      'mapsUrl': mapsUrl,
      'tagsColor': tagColor,
      'mekanTarihce': mekanTarihce,
      'mekanFotolar': mekanFotolar,
    };
  }
}