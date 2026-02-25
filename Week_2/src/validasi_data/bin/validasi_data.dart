import 'package:validasi_data/validasi_data.dart';

void main() {
  String username = 'budi123';
  String password = 'pass123';
  int umur = 17;

  bool daftar = canRegister(username, password);
  bool akses = canAccessAdultContent(username, password, umur);

  print('Dapat mendaftar: $daftar');
  print('Dapat mengakses konten: $akses');
}
