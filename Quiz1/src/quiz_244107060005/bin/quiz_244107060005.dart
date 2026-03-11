import 'package:quiz_244107060005/quiz_244107060005.dart';
void main() {
  // deklarasi variabel identitas nama dan NIM
  String nama = "Marsya Zulfa Zahrani";
  String nim = "244107060005";
  
  double nilaiUnikNIM = 5.0; // mengambil 3 digit terakhir NIM 005

  // mendeklarasikan List<double> berisi harga barang
  List<double> hargaBarang = [45000.0, 35000.0, 55000.0, 25000.0, 65000.0];
  
  hargaBarang.add(nilaiUnikNIM); // menambahkan nilaiUnikNIM menggunakan metode .add()

  // memanggil fungsi hitungTotal untuk mendapatkan jumlah belanja sebelum diskon
  double totalAwal = hitungTotal(hargaBarang);
  
  String? pesanDiskon; // menggunakan fitur null safety (?) pada variabel pesan diskon
  double diskon = 0; // variabel untuk menyimpan persentase diskon

  // logika percabangan untuk menentukan diskon
  if (totalAwal > 200000) {
    // jika total > 200.000, maka mendapatkan diskon 10%
    diskon = 0.10;
    pesanDiskon = "Selamat! Anda mendapatkan Diskon 10%";
  } else if (totalAwal >= 100000) {
    // jika total antara 100.000 - 200.000, maka mendapatkan diskon 5%
    diskon = 0.05;
    pesanDiskon = "Selamat! Anda mendapatkan Diskon 5%";
  } else {
    // jika di bawah 100.000, tidak mendapatkan diskon (0%)
    diskon = 0;
    pesanDiskon = "Maaf, Anda belum mendapatkan diskon";
  }

  double besarDiskon = totalAwal * diskon; // menghitung besar potongan harga
  double totalAkhir = totalAwal - besarDiskon; // menghitung total akhir setelah diskon

  // menampilkan nama, NIM, total, diskon, dan total akhir
  print("Nama          : $nama"); 
  print("NIM           : $nim");  
  print("Total Awal    : Rp ${totalAwal.toStringAsFixed(2)}");
  print("Besar Diskon  : Rp ${besarDiskon.toStringAsFixed(2)}");
  
  // menggunakan operator ! saat mencetak karena variabel pesanDiskon pasti terisi
  print("Keterangan    : ${pesanDiskon!}"); 

  // menampilkan hasil perhitungan belanja akhir
  print("TOTAL AKHIR   : Rp ${totalAkhir.toStringAsFixed(2)}");
}
