import 'package:flutter/material.dart';
import 'package:flutterlatihan_2/main.dart';
import 'package:flutterlatihan_2/page/pertemuan_page.dart';
import 'package:flutterlatihan_2/page/profile_page.dart';

class ListPage extends StatefulWidget {
  ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  

  List<Pertemuan> pertemuan = [
    Pertemuan(title: 'Pertemuan 1', subtitle: 'Pengenalan Android'),
    Pertemuan(title: 'Pertemuan 2', subtitle: 'Widget & Button'),
    Pertemuan(title: 'Pertemuan 3', subtitle: 'Activity & Intent'),
    Pertemuan(title: 'Pertemuan 4', subtitle: 'Toast & AlertDialog'),
    Pertemuan(title: 'Pertemuan 5', subtitle: 'ListView'),
    Pertemuan(title: 'Pertemuan 6', subtitle: 'Checkbox'),
    Pertemuan(title: 'Pertemuan 7', subtitle: 'Radio Button'),
  ];

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pertemuan 5"),
        backgroundColor: Colors.blueAccent,
      ),
      body: ListView.builder(
        itemCount: pertemuan.length,
        itemBuilder: (context, index) {
          final Pertemuan item = pertemuan[index];

          return Card(
            child: ListTile(
              leading: Icon(Icons.list),
              title: Text(item.title),
              subtitle: Text(item.subtitle),
              trailing: Icon(Icons.chevron_right),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PertemuanPage(pertemuan: item),
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}

class Pertemuan {
  final String title;
  final String subtitle;

  Pertemuan({required this.title, required this.subtitle});
}