import 'package:flutter/material.dart';

class ProdukDetail extends StatelessWidget {
  final String nama;
  final String summary;
  final String pengalaman;

  const ProdukDetail({
    super.key,
    required this.nama,
    required this.summary,
    required this.pengalaman,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detail Data")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Nama: $nama"),
            SizedBox(height: 10),
            Text("Summary: $summary"),
            SizedBox(height: 10),
            Text("Pengalaman: $pengalaman"),
          ],
        ),
      ),
    );
  }
}