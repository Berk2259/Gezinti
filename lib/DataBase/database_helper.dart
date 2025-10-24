
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {
  // Singleton
  DBHelper._privateConstructor();
  static final DBHelper instance = DBHelper._privateConstructor();

  static Database? _database;

  // Veritabanını aç veya oluştur
  Future<Database> get database async => _database ??= await _initDB();

  Future<Database> _initDB() async {
    String path = join(await getDatabasesPath(), 'database.db');
    return await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );
  }

  // Tabloları oluştur
  Future _onCreate(Database db, int version) async {
    // Sehirler tablosu
    await db.execute('''
      CREATE TABLE sehirler(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        ulkeKodu TEXT,
        sehirNumara TEXT,
        sehirIsim TEXT
      )
    ''');

    // Mekanlar tablosu
    await db.execute('''
      CREATE TABLE mekanlar(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        sehirId INTEGER,
        mekanIsim TEXT,
        mekanAciklama TEXT,
        mapsUrl TEXT,
        tagsColor TEXT,
        mekanTarihce TEXT,
        mekanFotolar TEXT,
        FOREIGN KEY(sehirId) REFERENCES sehirler(id)
      )
    ''');
  }
}
