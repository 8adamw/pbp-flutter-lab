# Tugas Flutter PBP

- Adam Wilson Autan
- 2106752110
- PBP E Gasal 2023

## Tugas 9

### Pertanyaan-pertanyaan Untuk Tugas 9

1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya,
2. apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
3. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
4. Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

### Jawaban Untuk Tugas 9

1. Bisa saja dilakukan, namun parsing data dari file JSON akan lebih sulit tanpa menggunakan model.
2. Tidak selalu, kecuali jika ingin melakukan hal tertentu kepada file JSON yang didapatkan. Selain itu, menggunakan model lebih baik karena akan mengurangi kompleksitas pemrosesan JSON.
3. Widget yang digunakan sama dengan tugas-tugas sebelumnya. Contohnya FloatingActionButton untuk tombol back di halaman detail. AppBar untuk menampilkan nama halaman terkini.
4. Pertama, flutter akan melakukan pemanggilan data dari web service. Dari ini Flutter akan mendapatkan sebuah file JSON. Flutter akan menggunakan `welcomeFromJson()` untuk mem-parse data yang berada di file itu. Menggunakan model yang tersedia, data akan di-mapping ke instance object `WatchlistItem`. Dari itu data dapat ditampilkan
5.
   1. Membuat file baru mywatchlist.dart, modelnya serta detail.dart, membuat routing baru di main.dart
   2. Menambahkan tombol baru di drawer

## Tugas 8

### Pertanyaan-pertanyaan Untuk Tugas 8

1. Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.
2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
3. Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
4. Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

### Jawaban Untuk Tugas 8

1. Tampilan layar pada flutter menggunakan stack sebagai logika utamanya. Ini berarti layar-layar dapat ditimpa di atas layar lainnya dengan urutan tertentu, dengan push dan pop, sebagaimana stack semestinya. Menggunakan Navigator.push, maka stack akan bertambah satu dan halaman sebelumnya berada di halaman baru. Dengan pushReplacement, halaman yang sekarang akan dihapus dan diganti halaman baru, tanpa mengubah posisinya di stack.
3. onPressed merupakan function yang akan dieksekusi jika user menekan sebuah widget yang ditampilkan di layar, contohnya sebuah Button.
4. Navigator menggunakan logika dari sebuah stack untuk mengimplementasikan aplikasi dengan banyak screen. Pertama kali user hanya mempunyai satu screen di stack, sesuai jalannya program, stack ini dapat dilakukan pop dan push. Saat dilakukan push, layar baru akan ditimpa di atas layar yang lama, dan user dapat kembali ke layar sebelumnya dengan menekan, contohnya tombol back yang akan melakukan pop ke screen sekarang dan mengembalikan aplikasi ke layar sebelumnya.
5. Untuk implementasi dari drawer menggunakan widget Drawer yang diletakkan di file yang berbeda. Untuk form 

## Tugas 7

### Pertanyaan-pertanyaan Untuk Tugas 7

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
2. Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
3. Apa fungsi dari `setState()`? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
4. Jelaskan perbedaan antara const dengan final.
5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

### Jawaban Untuk Tugas 7

1. Di Flutter, sebuah widget bisa saja stateful dan stateless. Perbedaannya adalah pada widget stateful, user dapat berinteraksi dengannya. Contohnya adalah sebuah TextField di form atau slider. Pada stateless widget dengan contoh text atau gambar, widget tidak akan berubah.
2. 
3. Saat `setState()` dipanggil, widget akan di-rebuild, sehingga value atau penampilan yang ditampilkan oleh widget akan dimutakhirkan. Salah satu variable yang terdampak adalah isi dari widget `Text` di atas angka `_counter`, yang berisi GANJIL atau GENAP, yang dipengaruhi oleh nilai dari `_counter`.
4. Keyword `final` digunakan untuk menandakan bahwa sebuah variable setelah di-set valuenya, tidak akan bisa diubah. Keyword `const` digunakan untuk menentukan bahwa suatu object adalah tetap dan tidak berubah, dan juga berlaku untuk semua attribute dan object-object lain yang mungkin berada di dalam object itu. `final` hanya menandakan bahwa variable tidak bisa diubah, namun `const` menandakan suatu object harus sudah ditetapkan saat compile time dan dari itu tidak dapat lagi dilakukan modifikasi.
5. Untuk text berisi GANJIL dan GENAP menggunakan dua widget Text dengan masing-masing style warna biru dan merah. Text ditampilkan dengan if-else statement, jika `_counter%2 == 0`, maka ditampilkan GENAP dan sebaliknya bila tidak akan ditampilkan GANJIL. Ditambahkan juga function `_decrementCounter()` yang akan mengurangi value `_counter` jika `_counter` lebih dari 0. Function ini dipanggil saat tombol minus(-) ditekan.
