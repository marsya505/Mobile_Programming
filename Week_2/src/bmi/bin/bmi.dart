import 'dart:io';
import 'package:bmi/bmi.dart';

void main() {
  // Meminta pengguna input berat badan dalam satuan kilogram
  stdout.write('Masukkan berat badan (kg): '); 
  double berat = double.parse(stdin.readLineSync()!); 
  // Meminta pengguna input tinggi badan dalam satuan meter
  stdout.write('Masukkan tinggi badan (meter): ');
  double tinggi = double.parse(stdin.readLineSync()!);

  // Memanggil fungsi dari lib, mengirim berat & tinggi, dan menyimpan hasil ke variabel bmi
  double bmi = hitungBMI(berat, tinggi); 

  // Menampilkan hasil BMI
  print('\nBMI kamu: ${bmi.toStringAsFixed(2)}');
  // Memanggil fungsi kategori dan menampilkan hasilnya
  print('Kategori: ${kategoriBMI(bmi)}');
}
