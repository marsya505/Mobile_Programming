double hitungBMI(double berat, double tinggi) {
  return berat / (tinggi * tinggi); // Menghitung BMI memakai rumus dan mengirim hasil ke pemanggil fungsi
}

String kategoriBMI(double bmi) {
  if (bmi < 18.5) return 'Kurus'; // Jika BMI kurang dari 18.5 maka hasilnya Kurus
  if (bmi < 25) return 'Normal'; // Jika kurang dari 25 maka hasilnya Normal
  if (bmi < 30) return 'Overweight'; // Jika kurang dari 30 maka hasilnya Overweight
  return 'Obesitas'; // Jika semua kondisi tidak terpenuhi maka hasilnya Obesitas
}
