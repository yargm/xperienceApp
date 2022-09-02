import 'dart:async';

import 'package:sqflite/sqflite.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class XperienceDatabase {
  //Columns Type
  static const String textType = 'TEXT';
  static const String realType = 'REAL';
  static const String intType = 'INTEGER';
  static const String blobType = 'BLOB';
  static const String nullType = 'Null';

  static final XperienceDatabase instance = XperienceDatabase._init();

  static Database? _database;
  XperienceDatabase._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('experience.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, filePath);
    return await openDatabase(path, version: 1, onCreate: _createDB);
  }

  FutureOr<void> _createDB(Database db, int version) async {
    await createTable(db, 'usuarios', columnasUsuario);
    await createTable(db, 'destinos', columnasDestino);
  }

  //crea las consultas para crear las tablas
  Future<bool> createTable(
      Database db, String tableName, Map<String, String> columns) async {
    print("creo $tableName");
    if (columns.isEmpty) return false;
    try {
      var script = 'CREATE TABLE $tableName (';
      for (var key in columns.keys) {
        final val = columns[key];
        if (key == columns.keys.first) {
          script = '$script $key $val PRIMARY KEY';
        } else {
          script = '$script , $key $val';
        }
      }
      script = script + ')';
      await db.execute(script);
      return true;
    } catch (ex) {
      return false;
    }
  }

  //borra tablas
  Future<int> deleteAll(String tableName) async {
    print(tableName);
    if (_database != null) {
      return await _database!.delete(tableName);
    } else {
      //la base de datos no existe, así que no importa
      return 0;
    }
  }

  Future close() async {
    final db = await instance.database;
    db.close();
  }

  static const Map<String, String> columnasUsuario = {
    'idUsuario': intType,
    'nombre': textType,
    'correo': textType,
    'contrasena': textType,
    'tokenFirebase': textType,
    'imagenPath': textType,
    'lat': textType,
    'lon': textType,
  };

  static const Map<String, String> columnasDestino = {
    'idDestino': intType,
    'nombre': textType,
    'imagen1': textType,
    'imagen2': textType,
    'imagen3': textType,
    'descripcion': textType,
    'lat': textType,
    'lon': textType,
    'municipio': textType,
  };
}
