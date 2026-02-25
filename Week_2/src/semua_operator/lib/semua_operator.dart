class OperatorDemo {
  void jalankan() {

    // Variabel awal
    int a = 10;
    int b = 3;

    // ARITMATIKA
    print("Aritmatika:");
    print(a + b); // penjumlahan
    print(a - b); // pengurangan
    print(a * b); // perkalian
    print(a / b); // pembagian 
    print(a ~/ b); // pembagian bulat
    print(a % b); // sisa bagi

    // INCREMENT DECREMENT
    print("\nIncrement Decrement:");
    int x = 5; // variabel awal
    print(x++); // tampilkan nilai dulu, baru tambah 1
    print(++x); // tambah dulu, baru tampilkan
    print(x--); // tampilkan dulu, lalu kurangi
    print(--x); // kurangi dulu, baru tampilkan

    // RELASIONAL
    print("\nRelasional:");
    print(a == b); // apakah sama
    print(a != b); // apakah tidak sama
    print(a > b); // lebih besar
    print(a < b); // lebih kecil
    print(a >= b); // lebih besar atau sama
    print(a <= b); // lebih kecil atau sama

    // LOGIKA
    print("\nLogika:");
    bool p = DateTime.now().second % 2 == 0; // p bernilai true jika detik sekarang genap
    bool q = false; // q selalu false
    print(p && q); // true jika keduanya true
    print(p || q); // true jika salah satu true
    print(!p); // kebalikan nilai p

    // ASSIGNMENT
    print("\nAssignment:");
    int n = 5; // nilai awal
    n += 3; // n = n + 3
    n -= 2; // n = n - 2
    n *= 4; // n = n × 4
    n ~/= 3; // n = n dibagi bulat 3
    n %= 2; // n = sisa bagi 2
    print(n); // menampilkan hasil akhir

    // NULL AWARE
    print("\nNull-aware:");
    String? nama; // variabel boleh null
    print(nama ?? "Default"); // jika null tampilkan Default
    nama ??= "Budi"; // isi Budi hanya jika nama null
    print(nama); // // tampilkan nilai nama
    print(nama.length); // panjang teks nama

    // TYPE TEST
    print("\nType Test:");
    dynamic data = 100; // tipe bebas
    print(data is int); // cek apakah int
    print(data is! String); // cek apakah bukan string

    dynamic teks = "halo"; // variabel teks
    String hasilCast = teks as String; // mengubah tipe menjadi string secara paksa
    print(hasilCast); // tampilkan hasil

    // TERNARY
    print("\nTernary:");
    int nilai = 75; // nilai angka
    String hasil = nilai >= 70 ? "Lulus" : "Gagal"; // jika nilai lebih besar atau sama 70 maka Lulus, selain itu Gagal
    print(hasil); // tampilkan hasil

    // BITWISE
    print("\nBitwise:");
    print(a & b); // AND bit
    print(a | b); // OR bit
    print(a ^ b); // XOR bit
    print(~a); // NOT bit
    print(a << 1); // geser bit kiri
    print(a >> 1); // geser bit kanan
  }
}
