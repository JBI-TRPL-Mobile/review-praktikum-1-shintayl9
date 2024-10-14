import 'package:flutter/material.dart';
import 'package:template_project/pages/detail_page.dart';
import 'package:template_project/pages/home_page.dart';
import 'package:template_project/pages/tentang_page.dart';

void main() {
  runApp(KatalogBukuApp());
}

class KatalogBukuApp extends StatelessWidget {
  const KatalogBukuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Katalog Buku',
        theme: ThemeData(primarySwatch: Colors.blue),
        initialRoute: '/',
        routes: {
          '/': (context) => HomePage(),
          '/detail': (context) => DetailPage(),
          '/tentang': (context) => TentangPage(),
        });
  }
}
