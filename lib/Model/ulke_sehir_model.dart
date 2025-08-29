import 'package:flutter/material.dart';

//Şehirlerin container özellikleri burada tutuluyor
class UlkeSehirModel {
  final String? sehirNumara;
  final String sehirIsim;
  final List<String> gezilecekYerler;
  final List<String> aciklamalar;
  final List<double> enlem;
  final List<double> boylam;

  UlkeSehirModel({
    this.sehirNumara,
    required this.sehirIsim,
    required this.gezilecekYerler,
    required this.aciklamalar,
    required this.enlem,
    required this.boylam,
  });
}
