import 'package:konversi_suhu/konversi_suhu.dart';

void main(List<String> arguments) {
  double c = 30;
  print('$c°C = ${celsiusKeKelvin(c)} K');
  print('$c°C = ${celsiusKeFahrenheit(c)} °F');
}
