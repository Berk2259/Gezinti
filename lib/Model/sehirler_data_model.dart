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
      enlem: 36.986282568140886,
      boylam: 35.33504495697991,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Büyük Saat Kulesi',
      mekanAciklama:
          'Osmanlı döneminden kalma, Türkiye’nin en yüksek saat kulesi.',
      enlem: 36.983925163341716,
      boylam: 35.33020282581604,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Ulu Camii',
      mekanAciklama:
          '16. yüzyılda yapılmış, Selçuklu ve Memlük mimarisi etkileri taşıyan cami.',
      enlem: 36.98498857765536,
      boylam: 35.33086652501453,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Yağ Camii',
      mekanAciklama: 'Eski bir kiliseden camiye çevrilmiş tarihi yapı.',
      enlem: 36.98386694981054,
      boylam: 35.327467182172974,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Arkeoloji Müzesi',
      mekanAciklama: 'Türkiye’nin en eski müzelerinden biri.',
      enlem: 36.99448441462198,
      boylam: 35.31307056789682,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Atatürk Evi Müzesi',
      mekanAciklama: 'Atatürk’ün Adana ziyaretlerinde kullandığı ev.',
      enlem: 36.988614908547234,
      boylam: 35.33186631576185,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Seyhan Baraj Gölü',
      mekanAciklama: 'Piknik, yürüyüş ve manzara için güzel bir alan.',
      enlem: 37.080809730150996,
      boylam: 35.29713729772261,
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Dilberler Sekisi',
      mekanAciklama:
          'Seyhan Nehri kıyısında yürüyüş yapabileceğin romantik bir park',
      enlem: 37.02306953953659,
      boylam: 35.32168066545844,
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Kapıkaya Kanyonu',
      mekanAciklama: 'Doğa yürüyüşü ve fotoğraf için çok uygun.',
      enlem: 37.24299671552583,
      boylam: 34.97767652963515,
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Varda Köprüsü',
      mekanAciklama:
          'Alman Köprüsü olarak bilinen, muhteşem manzaralı tarihi tren köprüsü.',
      enlem: 37.24292473825222,
      boylam: 34.97679560104201,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama: 'Türkiye’nin en büyük şehir parklarından biri.',
      enlem: 36.995934686152225,
      boylam: 35.3344463648431,
      tags: TagWidget.dogalYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Türkiye’nin en büyük camilerinden biri, Seyhan Nehri kıyısında.',
      enlem: 36.99158244309677,
      boylam: 35.33421979643672,
      tags: TagWidget.eglenceliYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Sinema Müzesi',
      mekanAciklama:
          'Türk sinemasına dair önemli eserler ve bilgiler barındırıyor.',
      enlem: 36.98846095691597,
      boylam: 35.33197054255354,
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
      enlem: 36.986282568140886,
      boylam: 35.33504495697991,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      enlem: 36.9915814,
      boylam: 35.3342198,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      enlem: 36.9959399,
      boylam: 35.3318717,
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
      enlem: 36.986282568140886,
      boylam: 35.33504495697991,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      enlem: 36.9915814,
      boylam: 35.3342198,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      enlem: 36.9959399,
      boylam: 35.3318717,
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
      enlem: 36.986282568140886,
      boylam: 35.33504495697991,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      enlem: 36.9915814,
      boylam: 35.3342198,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      enlem: 36.9959399,
      boylam: 35.3318717,
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
      enlem: 36.986282568140886,
      boylam: 35.33504495697991,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      enlem: 36.9915814,
      boylam: 35.3342198,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      enlem: 36.9959399,
      boylam: 35.3318717,
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
      enlem: 36.986282568140886,
      boylam: 35.33504495697991,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Adana Merkez Park',
      mekanAciklama:
          'Şehrin merkezinde büyük bir park, yürüyüş ve dinlenme için ideal.',
      enlem: 36.9915814,
      boylam: 35.3342198,
      tags: TagWidget.tarihiYer,
    ),
    MekanModel(
      mekanIsim: 'Sabancı Merkez Camii',
      mekanAciklama:
          'Adana\'nın simgesi olan camii, modern ve klasik mimarinin birleşimi.',
      enlem: 36.9959399,
      boylam: 35.3318717,
      tags: TagWidget.tarihiYer,
    ),
  ],
);
