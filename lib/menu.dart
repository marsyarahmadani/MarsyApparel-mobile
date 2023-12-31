import 'package:flutter/material.dart';
import 'package:marsy_apparel/widgets/left_drawer.dart';
import 'package:marsy_apparel/widgets/clothes_card.dart';
import 'package:marsy_apparel/screens/view_items.dart';


class MyHomePage extends StatelessWidget {
    MyHomePage({Key? key}) : super(key: key);

    final List<ShopItem> items = [
        ShopItem("Lihat Item", Icons.checklist),
        ShopItem("Tambah Item", Icons.add_box_rounded),
        ShopItem("Logout", Icons.logout),
    ];
    
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Marsy Apparel',
            style: TextStyle(
              color: Color.fromARGB(255, 56, 56, 56), // Ubah warna teks menjadi abu tua
            ),
          ),
          backgroundColor: Color.fromARGB(235, 240, 231, 222),
          
        ),
      // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
      drawer: const LeftDrawer(),
      body: SingleChildScrollView(
          // Widget wrapper yang dapat discroll
          child: Padding(
            padding: const EdgeInsets.all(10.0), // Set padding dari halaman
            child: Column(
              // Widget untuk menampilkan children secara vertikal
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                  // Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
                    child: Text(
                      'Welcome to Marsy Apparel', // Text yang menandakan toko
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                // Grid layout
                GridView.count(
                  // Container pada card kita.
                  primary: true,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  children: items.map((ShopItem item) {
                    // Iterasi untuk setiap item
                    Color bgColor = Colors.indigo; // Definisikan warna latar belakang sesuai item
                    
                    if (item.name == "Lihat Item") {
                      bgColor = const Color.fromARGB(255, 122, 89, 89); // Misalnya, warna latar belakang untuk "Lihat Item" adalah biru
                    } else if (item.name == "Tambah Item") {
                      bgColor = const Color.fromARGB(255, 175, 124, 76); // Warna latar belakang untuk "Tambah Item" adalah hijau
                    } else if (item.name == "Logout") {
                      bgColor = const Color.fromARGB(255, 201, 142, 124); // Warna latar belakang untuk "Logout" adalah merah
                    }
                    return ShopCard(item, bgColor);
                  }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}

