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
 

