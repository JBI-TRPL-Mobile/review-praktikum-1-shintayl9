import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'Judul': 'Flutter Basics',
      'Penulis': 'John Doe',
      'Deskripsi': 'Buku ini untuk belajar flutter basics'
    },
    {
      'Judul': 'Laut Bercerita',
      'Penulis': 'Leila S. Chudori',
      'Deskripsi':
          'Buku yang menerima penghargaan S.E.A Write Award tahun 2020 ini mengisahkan persahabatan, cinta, dan keluarga yang berhasil menggugah emosional pembaca. Kisah pilu akan tragedi penghilangan aktivis muda ini telah berhasil dipublikasikan ke mancanegara dan diterjemahkan ke bahasa Inggris.'
    },
    {
      'Judul': 'Bumi Manusia',
      'Penulis': 'Pramoedya Ananta Toer',
      'Deskripsi':
          'Bumi Manusia merupakan bagian dari Tetralogi Buru yang pertama dan mengambil latar serta cikal bakal bangsa Indonesia pada awal abad ke-20. Mengisahkan Minke, sang kreator yang berdarah priyayi, di mana ia ingin bebas dan merdeka seperti bangsa Eropa yang selalu menjadi kiblat dan simbol pengetahuan serta peradaban pada masanya.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daftar Buku')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index]['judul']!),
            trailing: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/detail',
                  arguments: books[index],
                );
              },
              child: Text('Detail'),
            ),
          );
        },
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
                title: Text('Tentang Aplikasi'),
                onTap: () {
                  Navigator.pushNamed(context, '/tentang');
                })
          ],
        ),
      ),
    );
  }
}
