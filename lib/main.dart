import 'package:bca_flutter_lab_solution/Lab-24/Lab_24_A_2.dart';
import 'package:bca_flutter_lab_solution/Lab-24/Lab_24_C_1.dart';
import 'package:flutter/material.dart';
import 'Lab-10/birthday_card.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  //For Database labs
  // final db = DB();
  // await db.initDatabase();

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ItemListScreen(),

      //User in Lab-10 Navigation Demo
      // initialRoute: "/",
      // routes: {
      //   "/" : (context) => Temp1(),
      //   "/temp2" : (context) => Temp2()
      // },
    )
  );
}