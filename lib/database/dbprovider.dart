
import 'dart:io';

import 'package:sqflite/sqflite.dart';

class DBProvider {

  static Database _database;
  static final DBProvider db = DBProvider._();

  DBProvider._();

  Future<Database> get database async {
    if (_database != null)
      return _database;
    else
      _database = await initDB();
    return _database;
  }

  initDB() async
  {
    Directory documentsDirectory = await getApplicationDocumentsDirectory();
    final path = join(documentsDirectory.path, 'my_table.db');
    return await
  }

createUser(User newUser)async{
    await deleteAllUsers();
    final db = await database;
    final res =await db.insert('User', newUser.toJson());
    return res;

}
Future<int>deleteAllUsers() async{
    final db = await database;
    final res = await db.rawDelete('DELETE FROM User')
    return res;
}
Future<List<User>> getAllUsers() async{
    final db = await database;
    final  res= await db.rawQuery('SELECT * FROM User');

    List<User> list= res.isNoteEmpty ? res.map((c) => User.fromJson(c)).toList():[];
    return list;
}

}