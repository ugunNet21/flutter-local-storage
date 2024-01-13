import 'package:flutter/material.dart';
import 'package:flutter_sharedpreferences/pages/home_hive.dart';
import 'package:flutter_sharedpreferences/pages/home_shared_prfef.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'models/my_data.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(MyDataAdapter());
  await Hive.openBox<MyData>('myBox');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: ('/'),
      routes: {
        '/home-shared': (context) => const HomeSharedPref(),
        '/': (context) => const HomeHive(),
      },
    );
  }
}
