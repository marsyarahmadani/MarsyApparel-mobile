import 'package:flutter/material.dart';
import 'package:marsy_apparel/menu.dart';
import 'package:marsy_apparel/screens/clothes_form.dart';
// import 'package:marsy_apparel/screens/list_product.dart';
import 'package:marsy_apparel/screens/view_items.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          // Bagian drawer header
          const DrawerHeader(
            decoration: BoxDecoration(
              color : Color.fromARGB(255, 224, 138, 112)
            ),
            child: Column(
              children: [
                Text(
                  'Marsy Apparel',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Tambahkan textAlign di sini
                ),
                Padding(padding: EdgeInsets.all(10)),
                Text(
                  "Organize your clothes stock at Marsy Apparel!",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center, // Tambahkan textAlign di sini
                ),
              ],
            ),
          ),
          // Bagian routing
          ListTile(
            leading: const Icon(Icons.home_outlined),
            title: const Text('Halaman Utama'),
            // Bagian redirection ke MyHomePage
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_box_rounded),
            title: const Text('Tambah Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
              // routing ke clothesform di sini
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ClothesFormPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.checklist),
            title: const Text('Lihat Item'),
            // Bagian redirection ke ShopFormPage
            onTap: () {
                  // Route menu ke halaman produk
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProductPage()),
                  );
              },
          ),
        ],
      ),
    );
  }
}