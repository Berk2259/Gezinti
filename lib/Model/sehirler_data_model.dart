import 'package:gezinti/Model/model.dart';
import 'package:gezinti/Widget/widget.dart';

// Şehirlerin içindeki bilgiler burada tutuluyor

//=========Türkiye kısmı burada başlıyor==========
UlkeSehirModel adana = UlkeSehirModel(
  sehirNumara: '01',
  sehirIsim: 'Adana',
  mekanlar: [
    MekanModel(
      mekanIsim: 'Taşköprü',
      mekanAciklama:
          'Roma döneminden kalma tarihi köprü, Seyhan Nehri üzerinde bulunuyor.',
      mapsUrl: 'https://maps.app.goo.gl/UudKQQ3oQV7v2Km28',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Büyük Saat Kulesi',
      mekanAciklama:
          'Osmanlı döneminden kalma, Türkiye’nin en yüksek saat kulesi.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Ulu Camii',
      mekanAciklama:
          '16. yüzyılda yapılmış, Selçuklu ve Memlük mimarisi etkileri taşıyan cami.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Yağ Camii',
      mekanAciklama: 'Eski bir kiliseden camiye çevrilmiş tarihi yapı.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Arkeoloji Müzesi',
      mekanAciklama: 'Türkiye’nin en eski müzelerinden biri.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Atatürk Evi Müzesi',
      mekanAciklama: 'Atatürk’ün Adana ziyaretlerinde kullandığı ev.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Seyhan Baraj Gölü',
      mekanAciklama: 'Piknik, yürüyüş ve manzara için güzel bir alan.',
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Dilberler Sekisi',
      mekanAciklama:
          'Seyhan Nehri kıyısında yürüyüş yapabileceğin romantik bir park',
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Kapıkaya Kanyonu',
      mekanAciklama: 'Doğa yürüyüşü ve fotoğraf için çok uygun.',
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Varda Köprüsü',
      mekanAciklama:
          'Alman Köprüsü olarak bilinen, muhteşem manzaralı tarihi tren köprüsü.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama: 'Türkiye’nin en büyük şehir parklarından biri.',
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Türkiye’nin en büyük camilerinden biri, Seyhan Nehri kıyısında.',
      tags: TagWidget.eglenceliYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Sinema Müzesi',
      mekanAciklama:
          'Türk sinemasına dair önemli eserler ve bilgiler barındırıyor.',
      tags: TagWidget.eglenceliYer,
    ),
  ],
);

UlkeSehirModel adiyaman = UlkeSehirModel(
  sehirNumara: '02',
  sehirIsim: 'Adıyaman',
  mekanlar: [
    MekanModel(
      mekanIsim: 'Taşköprü',
      mekanAciklama:
          'Roma döneminden kalma tarihi köprü, Seyhan Nehri üzerinde bulunuyor.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      tags: TagWidget.tarihiYer,
    ),
  ],
);

//===========Fransa kısmı burada başlıyor=============
UlkeSehirModel paris = UlkeSehirModel(
  sehirIsim: 'Paris',
  mekanlar: [
    MekanModel(
      mekanIsim: 'Taşköprü',
      mekanAciklama:
          'Roma döneminden kalma tarihi köprü, Seyhan Nehri üzerinde bulunuyor.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      tags: TagWidget.tarihiYer,
    ),
  ],
);

UlkeSehirModel lille = UlkeSehirModel(
  sehirIsim: 'Lille',
  mekanlar: [
    MekanModel(
      mekanIsim: 'Taşköprü',
      mekanAciklama:
          'Roma döneminden kalma tarihi köprü, Seyhan Nehri üzerinde bulunuyor.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      tags: TagWidget.tarihiYer,
    ),
  ],
);

// ==========İspanya kısmı burada başlıyor============
UlkeSehirModel barcelona = UlkeSehirModel(
  sehirIsim: 'Barcelona',
  mekanlar: [
    MekanModel(
      mekanIsim: 'Taşköprü',
      mekanAciklama:
          'Roma döneminden kalma tarihi köprü, Seyhan Nehri üzerinde bulunuyor.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      tags: TagWidget.tarihiYer,
    ),
  ],
);

UlkeSehirModel madrid = UlkeSehirModel(
  sehirIsim: 'Madrid',
  mekanlar: [
    MekanModel(
      mekanIsim: 'Taşköprü',
      mekanAciklama:
          'Roma döneminden kalma tarihi köprü, Seyhan Nehri üzerinde bulunuyor.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      tags: TagWidget.tarihiYer,
    ),
  ],
);
