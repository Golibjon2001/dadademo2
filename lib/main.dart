import 'package:dadademo2/pages/hom_page.dart';
import 'package:dadademo2/pages/hom_page2.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main()async {
  await Hive.initFlutter();
  await Hive.openBox("G'oliblon");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:Hompage(),
      routes: {
        Hom_Page.id:(context)=>Hom_Page(),
        Hompage.id:(context)=>Hompage(),
      },
    );
  }
}

