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

# Tugas 9 
### *1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?*
Iya, kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu. Akan tetapi hal tersebut belum tentu akan lebih baik daripada membuat model sebelum melakukan pengambulan data JSON karena dengan membuat model, kita bisa mengetahui data apa saja yang kita ingin ambil. Dengan begitu, pengambilan dan penugasan data akan lebih mudah dan rapi bila didahului dengan membuat model. 
Kesimpulannya adalah kita bisa melakukan pengambilan data JSON tanpa membuat model, namun akan lebih mudah jika kita membuat model terlebih dahulu.

### *2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.*
* `CookieRequest` merupakan kelas yang dapat mengirim _request_ `HTTP` yang menyediakan Cookie. Cookie yang menyimpan informasi dapat disertakan saat mengirim request `HTTP`, sehingga server dapat mengenali user yang authorized kemudian menyimpan informasi `Session`. `CookieRequest` perlu dibagikan ke seluruh komponen di aplikasi Flutter karena jika tidak, maka setiap komponen tersebut akan membuat objek `CookieRequest` masing-masing dan menyebabkan duplikasi data Cookie dan menyebabkan masalah bila ada perubahan Cookie.

### *3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.*
(1) Membuat Permintaan HTTP: 
Langkah pertama adalah membuat permintaan `HTTP` ke server yang menyediakan data dalam bentuk `JSON` dengam menggunakan paket http di Flutter untuk mengirimkan permintaan `GET` ke URL API.
(2) Membaca dan menerjemahkan data JSON:
Setelah permintaan `HTTP` berhasil, data `JSON` akan dikembalikan dalam format JSON kemudian di terjemah agar dapat dipahami oleh Dart dan Flutter.
(3) Menampilkan data:
Setelah data diterjemah, kemudian ditampilkan pada Flutter menggunakan widget yang sesuai.

### *4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.*

(1) Pertama-tama pengguna memasukkan data akun mereka melalui form login pada aplikasi Flutter, kemudian FOrm akan mengambil input tersebut dan dikirim ketika di klik tombol submit.

(2) Pengiriman data login menggunakan HTTP request ke Django yang memiliki aplikasi autentikasi, data biasanya dalam bentuk JSON.

(3) Setelah menerima data, autentikasi dilakukan pada fungsi views.py pada aplikasi autentikasi yang mengecek kecocokan username dan password, kemudian bila autentikasi berhasil, membuat Session untuk pengguna.

(4) Flutter menerima respons dari Django server, kemudian Flutter akan membawa pengguna ke halaman utama.

### *5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.*
1. `Scaffold` : Widget yang menyediakan struktur dasar dari applikasi Flutter.

* `Form`: Widget yang membungkus form fields dan berfungsi untuk validasi.

* `SingleChildScrollView` : Widget berfungsi sebagai wrapper yang dapat discroll

* `Column()`: Widget layout yang digunakan untuk menyusun widget-widget child dalam susunan yang vertikal atas-bawah.

* `Padding` : Widget untuk marging yang memberi padding pada childnya 

* `TextFormField`: berfungsi untuk menerima tipe data `String` dan `Integer`.

* `ElevatedButton`: Widget digunakan untuk membuat "raised button" yang memiliki properti sepreti child, onPressed, dan style.

* `Text`: Widget yang menampilkan tulisan.

* `AppBar` : Widget untuk bar yang berada di atas dari screen. 

* `SizedBox` : widget yang menambahkan jarak ntara widget agar memiliki spacing dan alignment yang rapi.

* `TextButton` : Widget yang membuat button tanpa shadow effct yang memiliki properti sepreti child, onPressed.

* `ListView.builder` : Widget yang secara efisien membuat list item-item dari data yang disediakan.


### *6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).*

*1. Mengecek status deployment project Django sudah berjalan dengan baik*
Melakukan perubahan sedikit (misal menambah line kosong) pada suatu file, kemudian melakukan deployment ulang.

*2. Membuat halaman login pada proyek tugas Flutter, 3. Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.*

* Membuat aplikasi `authentication` pada project Django sebelumnya, kemudian melengkapi setup autentikasi Django.
* Membuat fungsi login serta logout pada `authentication/views.py` dengan isi sebagai berikut:
```
...import yang diperlukan

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login sukses!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login gagal, akun dinonaktifkan."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
    
@csrf_exempt
def logout(request):
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout gagal."
        }, status=401)

```

* Menginstall package `Provider` 

* kemuidan mengubah root widget pada main.dart supaya menyediakan `CookieRequest` menggunakan `Provider` yang telah di instal sebelumnya.

* Membuat file baru `login.dart` pada `Screen` yang berisikan berikut ini:
```
...import yang diperlukan

void main() {
    runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
const LoginApp({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            primarySwatch: Colors.blue,
    ),
    home: const LoginPage(),
    );
    }
}

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
                title: const Text('Login'),
            ),
            body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                                labelText: 'Username',
                            ),
                        ),
                        const SizedBox(height: 12.0),
                        TextField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                                labelText: 'Password',
                            ),
                            obscureText: true,
                        ),
                        const SizedBox(height: 24.0),
                        ElevatedButton(
                            onPressed: () async {
                                String username = _usernameController.text;
                                String password = _passwordController.text;

                                // Cek kredensial
                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                // gunakan URL http://10.0.2.2/
                                final response = await request.login("http://127.0.0.1:8000/auth/login/", {
                                'username': username,
                                'password': password,
                                });
                    
                                if (request.loggedIn) {
                                    String message = response['message'];
                                    String uname = response['username'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                    ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(
                                            SnackBar(content: Text("$message Selamat datang, $uname.")));
                                    } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: const Text('Login Gagal'),
                                            content:
                                                Text(response['message']),
                                            actions: [
                                                TextButton(
                                                    child: const Text('OK'),
                                                    onPressed: () {
                                                        Navigator.pop(context);
                                                    },
                                                ),
                                            ],
                                        ),
                                    );
                                }
                            },
                            child: const Text('Login'),
                        ),
                    ],
                ),
            ),
        );
    }
}
```

* Kemudian mengubah pada file `main.dart` untuk merujuk ke `LoginPage()` terlebih dahulu

*4. Membuat model kustom sesuai dengan proyek aplikasi Django.*

* Mengambil data JSON pada project sebelumnya, kemudian salin ke situs Quicktype untuk mengambil model dalam bentuk dart.

*5. Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.*

* Menambah Dependensi HTTP dengan menginstal http pada terminal proyek flutter dengan melakukan `flutter pub add http`. Kemudian menambahkan kode `<uses-permission android:name="android.permission.INTERNET" />` dibawah `</application>` pada file `android/app/src/main/AndroidManifest.xml`

* Membuat file `view_items.dart`pada direktori `lib/screens` dan Menambahkan kode berikut :
```
... import yang diperlukan

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Item>> fetchProduct() async {
    // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
    var url = Uri.parse(
        'http://127.0.0.1:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Item
    List<Item> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Item.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Item'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data produk.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                    itemCount: snapshot.data!.length,
                    itemBuilder: (_, index) => InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LihatDetailPage(item: snapshot.data![index]),
                          ),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                        padding: const EdgeInsets.all(20.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                    "${snapshot.data![index].fields.name}",
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("Amount : ${snapshot.data![index].fields.amount}"),
                                    const SizedBox(height: 10),
                                    // Text(
                                    //     "${snapshot.data![index].fields.description}")
                                ],
                                ),
                            )));
                    }
                }
            }));
    }
}
```

*6. Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.*

* Membuat file bernama `lihat_detail.dart` yang akan dihubungkan dengan file sebelumnya untuk menampilkan semua Nama, amount, dan deskripsi Item yang berisikan:
```
... import yang diperlukan

class LihatDetailPage extends StatelessWidget {
  final Item item;

  const LihatDetailPage({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.fields.name),
        backgroundColor: Colors.blue.shade800,
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
``` 

