import 'package:perhitungan_diskon/perhitungan_diskon.dart';

void main() {
  double hargaBarang = 120000;
  int jumlahBeli = 3;
  String kodeMember = 'GOLD';

  double total = hitungTotal(hargaBarang, jumlahBeli);
  double diskon = hitungTotalDiskon(total, kodeMember);
  double akhir = hitungHargaAkhir(hargaBarang, jumlahBeli, kodeMember);

  print('Total: Rp$total');
  print('Diskon: Rp$diskon');
  print('Akhir: Rp$akhir');
}
