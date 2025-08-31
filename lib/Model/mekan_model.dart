//Her şehirdeki mekanların detay özellikleri burada tanımlanıyor daha sonra bu özellikler ulke_sehir_model da kullanılıyor

import 'package:flutter/material.dart';

class MekanModel {
  final String mekanIsim;
  final String mekanAciklama;
  final String? mapsUrl;
  final Icon tags;
  MekanModel({
    required this.mekanIsim,
    required this.mekanAciklama,
    this.mapsUrl,
    required this.tags,
  });
}
