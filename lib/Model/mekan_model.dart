//Her şehirdeki mekanların detay özellikleri burada tanımlanıyor daha sonra bu özellikler ulke_sehir_model da kullanılıyor

class MekanModel {
  final String mekanIsim;
  final String mekanAciklama;
  final double? enlem;
  final double? boylam;

  MekanModel({
    required this.mekanIsim,
    required this.mekanAciklama,
    required this.enlem,
    required this.boylam,
  });
}
