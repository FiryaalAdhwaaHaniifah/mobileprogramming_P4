import 'package:flutter/material.dart';
import 'produk_detail.dart';
import 'package:flutterlatihan_2/data.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.zero,
          child: Column(
            children: [

              // HEADER
              Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://images.pexels.com/photos/13528216/pexels-photo-13528216.jpeg',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  alignment: const Alignment(0.0, 2.5),
                  child: const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://images.pexels.com/photos/36597204/pexels-photo-36597204.jpeg',
                    ),
                    radius: 60.0,
                  ),
                ),
              ),

              const SizedBox(height: 60),

              // NAMA 
              GestureDetector(
              onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProdukDetail(
                  nama: DataGlobal.nama,
                  summary: DataGlobal.summary,
                  pengalaman: DataGlobal.pengalaman,
                 ),
                ),
               );
              },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "Firyaal Haniifah",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.blueGrey,
                      ),
                    ),
                    SizedBox(width: 5),
  
                  ],
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Tangerang Selatan, Indonesia",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.blueAccent,
                ),
              ),

              const SizedBox(height: 10),

              const Text(
                "Ferrari Software Engineer",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.black45,
                ),
              ),

              const SizedBox(height: 20),

              // CARD
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Expanded(
                        child: Column(
                          children: [
                            Text("Project"),
                            Text("17"),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text("Followers"),
                            Text("127M"),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}