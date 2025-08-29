import 'package:gezinti/Model/ulke_sehir_model.dart';

// Şehirlerin içindeki bilgiler burada tutuluyor
UlkeSehirModel adana = UlkeSehirModel(
  sehirNumara: '01',
  sehirIsim: 'Adana',
  gezilecekYerler: ['Taşköprü', 'Adana Merkez Park', 'Sabancı Merkez Camii'],
  aciklamalar: [
    'Roma döneminden kalma tarihi köprü, Seyhan Nehri üzerinde bulunuyor.',
    'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
    'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
  ],
);

UlkeSehirModel adiyaman = UlkeSehirModel(
  sehirNumara: '02',
  sehirIsim: 'Adıyaman',
  gezilecekYerler: ['Nemrut Dağı', 'Arsemia Antik Kenti', 'Cendere Köprüsü'],
  aciklamalar: [
    'Dünyaca ünlü heykeller ve güneşin doğuşu manzarasıyla Nemrut Dağı.',
    'Roma ve Helenistik dönemlerden kalma antik kent kalıntıları.',
    'Roma döneminden kalma taş köprü, tarih ve doğa iç içe.',
  ],
);

UlkeSehirModel paris = UlkeSehirModel(
  sehirIsim: 'Paris',
  gezilecekYerler: ['Eyfel Kulesi', 'Louvre Müzesi', 'Notre-Dame Katedrali'],
  aciklamalar: [
    'Paris’in simgesi, her yıl milyonlarca turistin ilgisini çeken demir kule.',
    'Dünyaca ünlü sanat eserlerinin sergilendiği devasa müze.',
    'Gotik mimarinin en güzel örneklerinden biri olan tarihi katedral.',
  ],
);

UlkeSehirModel lille = UlkeSehirModel(
  sehirIsim: 'Lille',
  gezilecekYerler: ['Grand Place', 'Palais des Beaux-Arts', 'Citadel of Lille'],
  aciklamalar: [
    'Şehrin ana meydanı, kafeler ve çiçeklerle dolu bir buluşma noktası.',
    'Fransa’nın en büyük güzel sanatlar müzelerinden biri.',
    '17. yüzyıldan kalma tarihi bir kale ve park alanı.',
  ],
);
