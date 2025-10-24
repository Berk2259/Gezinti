import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;
import 'package:gezinti/Model/model.dart';

class DataService {
  Future<List<UlkeSehirModel>> loadJsonData() async {
    // JSON dosyasını oku (pubspec.yaml altında assets/data/ ekli olacak)
    final String response = await rootBundle.loadString('assets/data/data.json');
    final Map<String, dynamic> decoded = json.decode(response) as Map<String, dynamic>;

    final List<dynamic> ulkelerJson = (decoded['ulkeler'] as List<dynamic>);
    return ulkelerJson
        .map((e) => UlkeSehirModel.fromJson(e as Map<String, dynamic>))
        .toList();
  }
}
