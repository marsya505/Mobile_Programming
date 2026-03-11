// fungsi menerima List berisi angka desimal dan mengembalikan nilai double
double hitungTotal(List<double> daftarHarga) {

  double total = 0; // inisialisasi variabel penampung total belanja mulai dari nol
  
  // perulangan for-in untuk menjumlahkan isi list
  // variabel 'harga' mengambil nilai tiap elemen di 'daftarHarga' satu per satu
  for (double harga in daftarHarga) {
    total += harga; // menambahkan nilai harga barang ke dalam variabel total
  }
  
  return total; // mengembalikan hasil akhir penjumlahan kepada pemanggil fungsi
}
