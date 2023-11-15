#### Nama: Marsya Rahmadani
#### NPM: 2206028642
#### Kelas: PBP E


# Tugas 7 
### *1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?*
| Stateless | Statefull|
| ---------- | ----------- |
| Widget yang hanya dirender sekali| Widget yang dapat dirender berulang kali|
| Kemampuan tidak dapat diubah | Kemampuan dapat berubah |


### *2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.*
#### Widget pada `menu.dart`:
1. `Scaffold` : Widget yang menyediakan struktur dasar dari applikasi Flutter.
2. `AppBar` : Widget untuk bar yang berada di atas dari screen. 
3. `SingleChildScrollView` : Widget berfungsi sebagai wrapper yang dapat discroll
4. `Padding` : Widget untuk marging yang memberi padding pada childnya 
5. `Column` : Widget yang mengatur peletakan child nya secara vertikal seperti kolom
6. `EdgeInsets` : Widget Text untuk menampilkan tulisan dengan alignment center dan style yang sesuai
7. `Text` : widget yang menampilkan tulisan
8. `GridView.count` : Widget yang membuat layout berbentuk grid
9. `MyHomePage` : Widget yang berfungsi sebagai home page aplikasi
10. `ShopCard` : Widget yang merepresentasikan sebuah _shop item card_ yang memiliki warna, icon dan nama.
11. `InkWell` : Widget yang bisa membuat childnya responsive terhadap event
12. `Container` : Widget yang berfungsi sebagai container untuk widget lainnya

#### Widget pada `main.dart`:
1. `MaterialApp` : Widget yang menjadi _root_ bagi aplikasi
2. `ThemeData` : Widget yang memberi tema dari keseluruhan aplikasi. Tema termasuk font, warna dan elemen fisual lainnya
3. `ColorScheme` : Widget yang menetapkan suatu warna spesifik bagi suatu objek.
4. `useMaterial3` : boolean flag
5. `MyHomePage` : Widget yang menjadi _home page_ dari aplikasi yang mengandung konten-konten utama pada aplikasi.

### *3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)*

Checklist:
1) Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
 => Membuat project Flutter baru bernama `marsy_apparel` melalui langkah-langkah berikut:
- Membuat folder baru untuk menyimpan project flutter
- Menjalankan perintah berikut pada cmd di folder yang sudah dibuat:
```
flutter create marsy_apparel
cd marsy_apparel
```
perlu diingat nama project harus lowercase dan dipisah menggunakan "_" atau "-"

 

2) Membuat tiga tombol sederhana dengan ikon dan teks untuk: Melihat daftar item (Lihat Item), Menambah item (Tambah Item), Logout (Logout), serta
 

3) **"Kamu telah menekan tombol Logout"** ketika tombol `Logout ditekan`.

# Tugas 8 
### *1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!*
* `Navigator.push()` :  Metode Navigator yang menambahkan suatu _route_ ke dalam _Stack route_ ke stack paling atas, sehingga _route_ yang baru saja ditambahkan akan muncul dan ditampilkan kepada user.
 Contoh penggunaan:
 ```
 if (item.name == "Tambah Item") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
              Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ClothesFormPage()));
 } 
 ```

* `Navigator.pushReplacement()` : Metode Navigator yang menghapus _route_ yang sedang ditampilkan kepada user dan digantikan ke suatu _route_ yang lain, sehingga aplikasi berpindah dari _route_ yang sedang ditampilkan ke _route_ yang yang diberikan.
 Contoh penggunaan:
 ```
 if (item.name == "Lihat Item") {
            // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
              Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) =>  ItemsPage(items: items)));
                
}
 ```

### *2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!*

* `Column()`: Widget layout yang digunakan untuk menyusun widget-widget child dalam susunan yang vertikal atas-bawah.
* `Row()`: Widget layout yang digunakan untuk menyusun widget-widget child dalam susunan yang horizontal kanan-kiri.
* `Center()`: Widgwt layout yang dapat memposisikan widget child agar berada di tengah.
* `Scaffold`: Widget layout yang menjadi pondasi dasar struktur material design.
* `MaterialApp`: Widget layout yang memberi tema material design pada sekumpulan widget.
* `AppBar`:  Widget layout yang digunakan untuk membuat AppBar

### *3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!*
Pada form tugas ini, saya menggunakan `TextFormField` yang bisa berfungsi untuk menerima tipe data `String` dan `Integer` kemudian dilengkapi dengan fungsi `validator` agar masing-masing input diisi dengan benar. 
- Saya menggunakan `TextFormField` tipe data `String` untuk menerima input *Nama Item* dan *Deskripsi* karena tipe ini memberikan kebebasan untuk menerima input nama dan deskripsi apa saja yang diberi user asal ia tidak kosong. Maka jika user memasukkan nama atau deskripsi berupa angka ataupun tulisan, akan tetap valid.
- Saya menggunakan `TextFormField` tipe data `Integer` untuk menerima input *Amount* karena tipe ini sesuai dengan menerima jumlah suatu barang adalah dalam bentuk angka dan bukan tulisan, sehingga input selain angka akan invalid.

### *4. Bagaimana penerapan clean architecture pada aplikasi Flutter?*
Untuk menerapkan clean architecture pada aplikasi Flutter, terdapat _layer_ yang digunakan:
* `Data Layer` : Layer yang bertanggung jawab dalam proses pengambilan dan/atau penyimpanan data. Data Layer mencakup model, sumber data (bertanggung jawab dalam memberi data kepada aplikasi yang membutuhkannya), dan repositori (kelas yang dapat berinteraksi dengan beberapa sumber data lainnya)
* `Domain Layer` : Layer yang mengelola bisnis inti aplikasi.
* `Presentation Layer` : Layer yang paling dekat dengan pengguna dalam sisi interface. Layer inilah yang mengandung _widget_, _screen_, dan tampilan lainnya yang akan diperlihatkan kepada user.

### *5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)*
1) Pertama saya menambahkan menu drawer pada bagian kiri aplikasi yang memiliki tiga buah opsi yaitu `Halaman Utama`, `Tambah Item`, dan `Lihat Item`  dengan membuat file `left_drawer.dart`yang berisi sbeagai berikut:

```
import 'package:flutter/material.dart';
import 'package:marsy_apparel/menu.dart';
import 'package:marsy_apparel/screens/clothes_form.dart';
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
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ItemsPage(items: items),
                  ));
            },
          )
        ],
      ),
    );
  }
}

```
 
2) Kemudian memasukkan menu drawer yang telah dibuat ke `menu.dart` yaitu menambahkan `drawer: const LeftDrawer(),` di line setelah `AppBar`

3)  Selanjutnya saya membuat file `models.dart` untuk menyimpan informasi `model` setiap `Item` dengan menginisiasikan kelas item sebagai berikut:
```
class Item {
  String name;
  int amount;
  String description;

  Item({
    required this.name,
    required this.amount,
    required this.description,
  });
  
}
```

4) Lanjut, saya menambahkan form yang diberi nama `clothes_form.dart` untuk memasukkan data baju yang diinput pada aplikasi sebagai berikut:


```
import 'package:flutter/material.dart';
import 'package:marsy_apparel/widgets/left_drawer.dart';
import 'package:marsy_apparel/models/models.dart';

List<Item> items = [];

class ClothesFormPage extends StatefulWidget {
  const ClothesFormPage({super.key});

  @override
  State<ClothesFormPage> createState() => _ClothesFormPageState();
}

class _ClothesFormPageState extends State<ClothesFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _amount = 0;
  String _description = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text(
            'Form Tambah Item',
          ),
        ),
        backgroundColor: Color.fromARGB(235, 240, 231, 222),
        foregroundColor: const Color.fromARGB(255, 63, 63, 63),
      ),
      drawer: const LeftDrawer(),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Nama Item",
                    labelText: "Nama Item",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _name = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Nama tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Amount",
                    labelText: "Amount",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  
                  onChanged: (String? value) {
                    setState(() {
                      _amount = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Amount tidak boleh kosong!";
                    }
                    if (int.tryParse(value) == null) {
                      return "Amount harus berupa angka!";
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Deskripsi",
                    labelText: "Deskripsi",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onChanged: (String? value) {
                    setState(() {
                      _description = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "Deskripsi tidak boleh kosong!";
                    }
                    return null;
                  },
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 201, 142, 124)),
                    ),
                    onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text('Memproses data')),
                        );
                        //BONUS: menyimpan item yang di add
                        Item newClothes = Item(
                          name: _name,
                          amount: _amount,
                          description: _description,
                        );
                        items.add(newClothes);
                        showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Item berhasil tersimpan'),
                              content: SingleChildScrollView(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Nama: $_name'),
                                    Text('Amount: $_amount'),
                                    Text('Deskripsi: $_description'),
                                  ],
                                ),
                              ),
                              actions: [
                                TextButton(
                                  child: const Text('OK'),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            );
                          },
                        );
                        _formKey.currentState!.reset();
                      }
                      
                    },
                    child: const Text(
                      "Save",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```

5) Kemudian saya menambahkan file `view_items.dart` yang akan memperlihatkan setiap `Item` yang berhasil ditambahkan dalam bentuk `TileList` dengan isi file seperti berikut ini:
```
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

```

6) kemudian agar kedepannya akan lebih mudah saya memindahkan widget `ShopItem` pada `menu.dart` ke `clothes_card.dart`.
kemudian saya me-refactor file-file dart saya dengan memindahkannya ke folder2 dengan detail seperti berikut:
    - Folder lib berisi: folder models, folder screens, folder widgets, main.dart dan menu.dart 
    - Folder screen berisi: clothes_form.dart dan view_items.dart
    - Folder widgets berisi: clothes_card.dart dan left_drawer.dart
    - Folder models berisi: models.dart
=======
3) Memunculkan Snackbar dengan tulisan:
 * **"Kamu telah menekan tombol Lihat Item"** ketika tombol `Lihat Item` ditekan.
 * **"Kamu telah menekan tombol Tambah Item"** ketika tombol Tambah `Item ditekan`.
 * **"Kamu telah menekan tombol Logout"** ketika tombol `Logout ditekan`.


- Membuat struktur project dengan membuat file bernama menu.dart dengan isi sebagai berikut:
```
import 'package:flutter/material.dart';

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
                      bgColor = Color.fromARGB(255, 122, 89, 89); // Misalnya, warna latar belakang untuk "Lihat Item" adalah biru
                    } else if (item.name == "Tambah Item") {
                      bgColor = Color.fromARGB(255, 175, 124, 76); // Warna latar belakang untuk "Tambah Item" adalah hijau
                    } else if (item.name == "Logout") {
                      bgColor = Color.fromARGB(255, 201, 142, 124); // Warna latar belakang untuk "Logout" adalah merah
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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

}

class ShopItem {
  final String name;
  final IconData icon;

  ShopItem(this.name, this.icon);
}

class ShopCard extends StatelessWidget {
  final ShopItem item;
  final Color bgColor;

  const ShopCard(this.item, this.bgColor, {super.key}) ; // Constructor

  @override
  Widget build(BuildContext context) {
    return Material(
      color: bgColor,
      child: InkWell(
        // Area responsive terhadap sentuhan
        onTap: () {
          // Memunculkan SnackBar ketika diklik
          ScaffoldMessenger.of(context)
            ..hideCurrentSnackBar()
            ..showSnackBar(SnackBar(
                content: Text("Kamu telah menekan tombol ${item.name}")));
        },
        child: Container(
          // Container untuk menyimpan Icon dan Text
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  item.icon,
                  color: Colors.white,
                  size: 30.0,
                ),
                const Padding(padding: EdgeInsets.all(3)),
                Text(
                  item.name,
                  textAlign: TextAlign.center,
                  style: const TextStyle(color: Colors.white),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
```
- Dapat dilihat pada `List<ShopItem>` saya membuat 3 icon berfungsi sebagai tombol.
- Untuk penggantian warna saya membuat if-else statement yang akan membedakan warna tombol sesuai dengan nama icon nya, dan mengeset warna base case nya sebagai warna indigo.
- Selanjutnya pada file `main.dart` saya mengubahnya sebagai berikut:
```
import 'package:flutter/material.dart';
import 'package:marsy_apparel/menu.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

```
