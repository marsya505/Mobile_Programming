Map<String, Map<String, double>> dataKonversi = {
  "panjang": {
    // konversi panjang
    "meter": 1, // nilai dasar
    "kilometer": 1000, // 1 kilometer = 1000 meter
    "centimeter": 0.01, // 1 centimeter = 0.01 meter
    "millimeter": 0.001, // 1 millimeter = 0.001 meter
    "inch": 0.0254, // 1 inch = 0.0254 meter
  },
  "massa": {
    // konversi massa
    "kilogram": 1, // nilai dasar
    "gram": 0.001, // 1 gram = 0.001 kilogram
    "miligram": 0.000001, // 1 miligram = 0.000001 kilogram
    "ton": 1000, // 1 ton = 1000 kilogram
    "pound": 0.453592, // 1 pound = 0.453592 kilogram
  },
  "volume": {
    // konversi volume
    "liter": 1, // nilai dasar
    "milliliter": 0.001, // 1 mililiter = 0001 liter
    "kiloliter": 1000, // 1 kiloliter = 1000 liter
    "gallon": 3.78541, // 1 gallon = 3.78541 liter
    "cup": 0.24, // 1 cup = 0,24 liter
  },
};

double konversi(String kategori, String dari, String ke, double nilai) {
  // mengubah nilai ke satuan dasar kategori
  double keDasar = nilai * dataKonversi[kategori]![dari]!;
  // mengubah dari satuan dasar ke satuan tujuan lalu mengembalikan hasil
  return keDasar / dataKonversi[kategori]![ke]!;
}

// suhu beda rumus
double konversiSuhu(double nilai, String dari, String ke) {
  // variabel untuk menyimpan hasil konversi sementara dalam celsius
  double celsius;

  if (dari == "celsius") {
    // jika input sudah celsius
    celsius = nilai; // tidak perlu konversi
  } else if (dari == "fahrenheit") {
    // jika dari fahrenheit
    celsius = (nilai - 32) * 5 / 9; // rumus fahrenheit ke celcius
  } else {
    // jika dari kelvin
    celsius = nilai - 273.15; // rumus kelvin ke celcius
  }

  // jika tujuan celsius, langsung kembalikan
  if (ke == "celsius") return celsius;
  // jika tujuan fahrenheit, pakai rumus celcius ke fahrenheit
  if (ke == "fahrenheit") return (celsius * 9 / 5) + 32;
  // jika tujuan kelvin, pakai rumus celcius ke kelvin
  return celsius + 273.15;
}
