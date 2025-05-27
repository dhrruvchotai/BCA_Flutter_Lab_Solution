import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._privateConstructor();
  static Database? _database;
  DatabaseHelper._privateConstructor();

  Future<Database> get database async => _database ??= await _initDatabase();

  Future<Database> _initDatabase() async {
    Directory docsDir = await getApplicationDocumentsDirectory();
    String path = join(docsDir.path, 'employee.db');
    return await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  Future _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE EmployeeDetail (
        EmpID INTEGER PRIMARY KEY AUTOINCREMENT,
        Name TEXT,
        DOB TEXT,
        City TEXT,
        Address TEXT,
        Contact TEXT,
        Email TEXT
      )
    ''');
    await db.execute('''
      CREATE TABLE EmpDepartment (
        DeptID INTEGER PRIMARY KEY AUTOINCREMENT,
        EmpID INTEGER,
        DeptName TEXT,
        Designation TEXT,
        DateOfJoining TEXT,
        FOREIGN KEY (EmpID) REFERENCES EmployeeDetail (EmpID)
      )
    ''');
  }

  Future<int> insertEmployeeDetail(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert('EmployeeDetail', row);
  }

  Future<int> insertEmpDepartment(Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.insert('EmpDepartment', row);
  }

  Future<List<Map<String, dynamic>>> getAllEmployees() async {
    Database db = await instance.database;
    return await db.query('EmployeeDetail');
  }

  Future<Map<String, dynamic>?> getEmployeeById(int id) async {
    Database db = await instance.database;
    List<Map<String, dynamic>> results = await db.query(
      'EmployeeDetail',
      where: 'EmpID = ?',
      whereArgs: [id],
    );
    return results.isNotEmpty ? results.first : null;
  }

  Future<int> updateEmployee(int id, Map<String, dynamic> row) async {
    Database db = await instance.database;
    return await db.update(
      'EmployeeDetail',
      row,
      where: 'EmpID = ?',
      whereArgs: [id],
    );
  }

  Future<int> deleteEmployee(int id) async {
    Database db = await instance.database;
    return await db.delete(
      'EmployeeDetail',
      where: 'EmpID = ?',
      whereArgs: [id],
    );
  }
}
