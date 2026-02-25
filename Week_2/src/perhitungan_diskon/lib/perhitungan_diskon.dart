double hitungTotal(double hargaBarang, int jumlahBeli) {
  return hargaBarang * jumlahBeli;
}

double diskonMember(String kodeMember) {
  if (kodeMember == 'GOLD') return 0.1;
  if (kodeMember == 'SILVER') return 0.05;
  return 0;
}

double diskonTambahan(double total) {
  return total > 300000 ? 0.05 : 0;
}

double hitungTotalDiskon(double total, String kodeMember) {
  return total * (diskonMember(kodeMember) + diskonTambahan(total));
}

double hitungHargaAkhir(double hargaBarang, int jumlahBeli, String kodeMember) {
  double total = hitungTotal(hargaBarang, jumlahBeli);
  return total - hitungTotalDiskon(total, kodeMember);
}
