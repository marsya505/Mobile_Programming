Map<String, double> kurs = { // Membuat variabel bernama kurs bertipe Map dengan String nama mata uang dan double nilai kurs
  'USD': 1, // USD dijadikan mata uang dasar
  'IDR': 16800, // 1 USD = 16800 IDR
  'EUR': 1.15, // 1 EUR = 1.15 USD
};

double konversiMataUang(double jumlah, String dari, String ke) { // Menerima parameter jumlah uang, mata uang asal, mata uang tujuan
  // Menghitung dalam satuan USD dengan cara membagi jumlah yang dimasukkan dengan nilai kurs mata uang asal yang diambil dari data kurs
  double dalamUSD = jumlah / kurs[dari]!; 
  return dalamUSD * kurs[ke]!; // Mengubah nilai USD ke mata uang tujuan, lalu mengembalikan hasilnya
}
