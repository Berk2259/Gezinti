import 'package:gezinti/Model/model.dart';

//Şehirlerin container özellikleri burada tutuluyor
class UlkeSehirModel {
  final String? sehirNumara;
  final String sehirIsim;
  final List<MekanModel> mekanlar; //MekanModel sınıfının özelliklerini çekiyoru
  UlkeSehirModel({
    this.sehirNumara,
    required this.sehirIsim,
    required this.mekanlar,
  });
}
