# Tugas Flutter PBP

- Adam Wilson Autan
- 2106752110
- PBP E Gasal 2023

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
