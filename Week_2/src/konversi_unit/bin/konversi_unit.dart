import 'dart:io';
import 'package:konversi_unit/konversi_unit.dart';

void main() {
  // menu
  print("KONVERTER UNIT");
  print("1. Panjang");
  print("2. Massa");
  print("3. Volume");
  print("4. Suhu");

  // meminta input user, memastikan tidak null, lalu mengubah ke integer
  stdout.write("Pilih kategori: ");
  int pilih = int.parse(stdin.readLineSync()!);

  if (pilih < 1 || pilih > 4) {
    // mengecek apakah pilihan di luar rentang menu
    print("Kategori tidak valid."); // menampilkan pesan kesalahan
    return; // menghentikan program
  }

  // mengambil nama kategori berdasarkan nomor pilihan user
  String kategori = ["panjang", "massa", "volume", "suhu"][pilih - 1];

  // membaca input lalu mengubahnya menjadi angka desimal
  stdout.write("Masukkan nilai: ");
  double nilai = double.parse(stdin.readLineSync()!);

  if (nilai < 0 && kategori != "suhu") {
    // jika nilai negatif dan bukan suhu
    print("Nilai tidak boleh negatif."); // menampilkan pesan error
    return; // mengentikan program
  }

  if (kategori == "suhu") {
    // mengecek apakah user memilih suhu
    List satuan = ["celsius", "fahrenheit", "kelvin"]; // daftar satuan suhu

    print("Satuan tersedia: $satuan"); // menampilkan daftar satuan
    stdout.write("Dari: "); // meminta input satuan asal
    String dari = stdin.readLineSync()!; // membaca satuan asal
    stdout.write("Ke: "); // meminta satuan tujuan
    String ke = stdin.readLineSync()!; // membaca satuan tujuan

    double hasil = konversiSuhu(
      nilai,
      dari,
      ke,
    ); // memanggil fungsi konversi suhu
    print(
      "\nHasil: ${hasil.toStringAsFixed(2)} $ke",
    ); // menampilkan hasil dengan 2 angka desimal
  } else {
    // dijalankan ketika kategori bukan suhu
    var satuan = dataKonversi[kategori]!.keys
        .toList(); // mengambil daftar satuan dari map konversi

    print("Satuan tersedia: $satuan"); // menampilkan daftar satuan
    stdout.write("Dari: "); // meminta satuan asal
    String dari = stdin.readLineSync()!; // membaca satuan asal
    stdout.write("Ke: "); // meminta satuan tujuan
    String ke = stdin.readLineSync()!; // membaca satuan tujuan

    if (!satuan.contains(dari) || !satuan.contains(ke)) {
      // mengecek apakah satuan tidak ada di daftar
      print("Satuan tidak valid."); // menampilkan error
      return; // menghentikan program
    }

    double hasil = konversi(
      kategori,
      dari,
      ke,
      nilai,
    ); // memanggil fungsi konversi umum
    print(
      "\nHasil: ${hasil.toStringAsFixed(4)} $ke",
    ); // menampilkan hasil dengan 4 angka desimal
  }
}
