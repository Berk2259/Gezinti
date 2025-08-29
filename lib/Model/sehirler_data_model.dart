import 'package:gezinti/Model/ulke_sehir_model.dart';

// Şehirlerin içindeki bilgiler burada tutuluyor

//Türkiye kısmı burada başlıyor
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

//Fransa kısmı burada başlıyor
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

// İspanya kısmı burada başlıyor
UlkeSehirModel barcelona = UlkeSehirModel(
  sehirIsim: 'Barcelona',
  gezilecekYerler: ['Sagrada Familia', 'Park Güell', 'La Rambla'],
  aciklamalar: [
    'Gaudi tarafından tasarlanmış, tamamlanmamış ünlü kilise ve mimari başyapıt.',
    'Renkli mozaikler ve heykellerle dolu, şehrin simgesi park.',
    'Şehrin en ünlü caddesi, kafeler, mağazalar ve sokak sanatçılarıyla dolu.',
  ],
);

UlkeSehirModel madrid = UlkeSehirModel(
  sehirIsim: 'Madrid',
  gezilecekYerler: ['Prado Müzesi', 'Retiro Parkı', 'Kraliyet Sarayı'],
  aciklamalar: [
    'İspanya’nın en ünlü sanat müzesi, Goya ve Velázquez gibi eserleri barındırıyor.',
    'Şehir merkezinde büyük bir park, göletler ve yürüyüş yolları mevcut.',
    'İspanya kraliyet ailesinin resmi ikametgahı ve tarihi saray.',
  ],
);
