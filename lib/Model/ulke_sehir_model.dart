import 'package:gezinti/Model/model.dart';

//Şehirlerin container özellikleri burada tutuluyor
class UlkeSehirModel {
  final String? ulkeKodu; // TR, ES gibi ülke kodu (opsiyonel, JSON'a eklenebilir)
  final String? sehirNumara;
  final String sehirIsim;
  final List<MekanModel> mekanlar; //MekanModel sınıfının özelliklerini çekiyoru
  UlkeSehirModel({
    this.ulkeKodu,
    this.sehirNumara,
    required this.sehirIsim,
    required this.mekanlar,
  });
  
  factory UlkeSehirModel.fromJson(Map<String, dynamic> json) {
    return UlkeSehirModel(
      ulkeKodu: json['ulkeKodu'] as String?,
      sehirNumara: json['sehirNumara'],
      sehirIsim: json['sehirIsim'],
      mekanlar: (json['mekanlar'] as List)
          .map((mekanJson) => MekanModel.fromJson(mekanJson))
          .toList(),
    );
  }
  Map<String, dynamic> toJson() {
    return {
      'ulkeKodu': ulkeKodu,
      'sehirNumara': sehirNumara,
      'sehirIsim': sehirIsim,
      'mekanlar': mekanlar.map((m) => m.toJson()).toList(),
    };
  }
}