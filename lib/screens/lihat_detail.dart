import 'package:flutter/material.dart';
import 'package:marsy_apparel/models/product.dart';
import 'package:marsy_apparel/screens/view_items.dart';

class LihatDetailPage extends StatelessWidget {
  final Item item;

  const LihatDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Color.fromARGB(255, 189, 143, 135),
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '${item.fields.name}',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Amount: ${item.fields.amount}'),
            SizedBox(height: 10),
            Text('Description: ${item.fields.description}'),
            ElevatedButton(
              onPressed: () async {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ProductPage()),
                );
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}