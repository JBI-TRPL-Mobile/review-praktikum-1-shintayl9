import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, String>? book =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>?;
    if (book == null) {
      return Scaffold(
        appBar: AppBar(title: Text('Detail Buku')),
        body: Center(
          child: Text('Tidak ada data buku yang tersedia.'),
        ),
      );
    }
    return Scaffold(
      appBar: AppBar(title: Text(book['title']!)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(book['image']!),
            SizedBox(height: 16),
            Text(
              'Penulis: ${book['author']}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            Text(
              book['description']!,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
