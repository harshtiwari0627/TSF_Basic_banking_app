import 'package:sqflite/sqflite.dart' as sql;
class SQLHelper{
  static Future<void> createTables(sql.Database database) async{
    await database.execute(""" CREATE TABLE items(
    id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
    account_number INTERGER NOT NULL,
    name TEXT,
    email TEXT,
    balance INTEGER,
    
    """);
  }

  static Future<sql.Database> db() async {
    return sql.openDatabase(
      'bank.db',
      version: 1,
      onCreate: (sql.Database database,int version) async{
        await createTables(database);
      }
    );
  }

  static Future<int> createItem(String name,String email,int balance,int account_number) async {
    final db = await SQLHelper.db();
    final data = {'name':name,'email':email,'balance':balance,'account_number':account_number};
    final id  = await db.insert('items',data,conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }

  static Future<List<Map<String,dynamic>>> getItems() async {
    final db = await SQLHelper.db();
    return db.query('items',orderBy: "id");
  }

  static Future<List<Map<String,dynamic>>> getItem( int account_number) async {
    final db = await SQLHelper.db();
    return db.query('items',where: "account_number =?",whereArgs: [account_number],limit: 1);
  }
  static Future<int> updateItem(
      int id, String name,String account_number,int balance,String? email) async {
      final db = await SQLHelper.db();
      final data = {
        'balance':balance
      };
      final result = await db.update('items',data,where: "id=?", whereArgs: [id]);
      return result;
  }

}