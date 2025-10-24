import 'package:flutter/material.dart';
import 'package:gezinti/DataBase/database_helper.dart';
import 'package:gezinti/Screen/screen.dart';
import 'package:gezinti/Service/db_utils.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  // Veritabanını aç ve oluştur
  final db = await DBHelper.instance.database;
  print("Veritabanı yol: ${db.path}");
  await copyDBToDownloads(); // Kopyayı oluştur
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainScreen());
  }
}
