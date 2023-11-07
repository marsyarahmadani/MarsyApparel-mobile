# marsy_apparel

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


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
* Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.


* Membuat tiga tombol sederhana dengan ikon dan teks untuk:
 1) Melihat daftar item (Lihat Item)


 2) Menambah item (Tambah Item)


 3) Logout (Logout)


* Memunculkan Snackbar dengan tulisan:
 1) **"Kamu telah menekan tombol Lihat Item"** ketika tombol `Lihat Item` ditekan.


 2) **"Kamu telah menekan tombol Tambah Item"** ketika tombol Tambah `Item ditekan`.

 
 3) **"Kamu telah menekan tombol Logout"** ketika tombol `Logout ditekan`.