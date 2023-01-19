//database provider class
import 'package:court_room/models/Notemodel.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseProvider {
  DatabaseProvider._();
  static final DatabaseProvider db = DatabaseProvider._();
  static Database? database;

  //creating the getter the database
  Future<Database> get _database async {
    // first check we dont have database
    if (_database != null) {
      return _database;
    }
    database = await initDB();
    return _database;
  }

  initDB() async {
    return await openDatabase(
      join(await getDatabasesPath(), "note app.db"),
      onCreate: (db, version) async {
        //lets create first table
        await db.execute('''
CREATE TABLE notes(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  body TEXT,
  creation_date DATE,
  
)
''');
//make sure names are simlilar to models
      },
      version: 1,
    );
  }

  // now to create a function to add new note to our variable
  addNewNote(NoteModel note) async {
    final db = await database;
    db?.insert("notes", note.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace);
  }

  Future<dynamic> getNotes() async {
    final db = await database;
    var res = await db?.query("notes");
    if (res?.length == 0) {
      return Null;
    } else {
      var resultMap = res?.toList();
      return resultMap!.isNotEmpty ? resultMap : Null;
    }
  }
}
