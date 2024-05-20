import 'dart:convert';
import 'dart:typed_data';

import 'package:hamzawyapp/features/auth/dashboard/modul/food/model/QuntityModel/qunmod.dart';
import 'package:sqflite/sqflite.dart';

class databaserepo {
  late Database myobjectdb;
Future  <void> initDB() async {
    myobjectdb = await openDatabase(
      (await getDatabasesPath()) + '/productDB.db',
      version: 2,
      onCreate: (db, version) async {
        await db.execute('''
         CREATE TABLE Food (
          id INTEGER PRIMARY KEY AUTOINCREMENT,
           name TEXT  NOT NULL, 
           image BLOB,
           description TEXT,
           qnt INTEGER,
            available INTEGER ,
            favroite INTEGER,
            cart INTEGER
            )
           
            ''');
      },
    );
  }

  Future<List<FoodModel>> fatchfood() async {
    return (await myobjectdb.query('Food'))
        .map((e) => FoodModel.fromJson(e))
        .toList();
  }

  Future<List<FoodModel>> fatchfavfood() async {
    return (await myobjectdb.query('Food', where: 'favroite=?', whereArgs: [1]))
        .map((e) => FoodModel.fromJson(e))
        .toList();
  }

  Future<List<FoodModel>> fatchcartfood() async {
    return (await myobjectdb.query('Food', where: 'cart=?', whereArgs: [1]))
        .map((e) => FoodModel.fromJson(e))
        .toList();
  }

 Future<void> insertfood (String name, String des, int qu, int ava, Uint8List image)async {
  await  myobjectdb.insert('Food', {
      'name': name,
      'description': des,
      'qnt': qu,
      'available': ava,
      'image': image,
      'favroite': 0,
      'cart': 0
    });
  }

  void updatqun(int qu, int id) {
    myobjectdb.update('Food', {'available': qu},
        where: 'id=?', whereArgs: [id]);
  }

  void updatcart(int value, int id) {
    myobjectdb.update('Food', {'cart': value}, where: 'id=?', whereArgs: [id]);
  }

void updateFavorite (int value, int id)  {
    myobjectdb.update('Food', {'favroite': value},
        where: 'id=?', whereArgs: [id]);
  }

  void delete(int id) {
    myobjectdb.delete('Food', where: 'id=?', whereArgs: [id]);
  }
}
