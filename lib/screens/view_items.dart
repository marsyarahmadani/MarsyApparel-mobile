import 'package:flutter/material.dart';
import 'package:marsy_apparel/models/models.dart';
import 'package:marsy_apparel/widgets/left_drawer.dart';

class ItemsPage extends StatelessWidget {
  final List<Item> items;

  const ItemsPage({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All your items'),
        backgroundColor: const Color.fromARGB(235, 240, 231, 222),
        foregroundColor: const Color.fromARGB(255, 63, 63, 63),
      ),
      drawer: const LeftDrawer(),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding:  EdgeInsets.all(8.0),
            child: Text(
              'Click to see detail',
              textAlign: TextAlign.center,

              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
        Expanded(
            child: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              child: ListTile(
                title: Text(items[index].name),
                tileColor:  const Color.fromARGB(255, 224, 192, 180),
                subtitle: Text('Jumlah: ${items[index].amount}'),
                
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(items[index].name),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Amount: ${items[index].amount}'),
                            Text('Deskripsi: ${items[index].description}'),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('Close'),
                           ),
                            ],
                          );
                        },
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
