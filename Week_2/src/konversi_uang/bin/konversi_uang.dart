import 'dart:io';
import 'package:konversi_uang/konversi_uang.dart';

void main() {
  // Meminta pengguna untuk input jumlah uang
  stdout.write('Masukkan jumlah uang: '); 
  // Membaca input pengguna, memastikan nilainya tidak kosong, mengubahnya dari teks menjadi angka desimal, lalu menyimpannya ke variabel jumlah
  double jumlah = double.parse(stdin.readLineSync()!); 

  // Meminta pengguna untuk input mata uang asal
  stdout.write('Dari mata uang (USD/IDR/EUR): ');
  String dari = stdin.readLineSync()!.toUpperCase(); // Membaca input teks dan mengubah huruf menjadi kapital

  // Meminta pengguna untuk input mata uang tujuan
  stdout.write('Ke mata uang (USD/IDR/EUR): ');
  String ke = stdin.readLineSync()!.toUpperCase(); // Membaca input dan mengubah ke huruf besar

  // Memanggil fungsi dengan mengirimkan nilai jumlah, mata uang asal, dan tujuan, lalu menyimpan hasilnya ke variabel hasil
  double hasil = konversiMataUang(jumlah, dari, ke);

  // Menampilkan hasil, menyisipkan nilai variabel yang diformat menjadi dua angka desimal, lalu menambahkan kode mata uang tujuan
  print('\nHasil konversi: ${hasil.toStringAsFixed(2)} $ke');
}
