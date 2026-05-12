import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../models/weather_model.dart';

class WeatherService {
  static const String _apiKey = 'apiKey';
  static const String _baseUrl =
      'https://api.openweathermap.org/data/2.5/weather';

  // Ambil cuaca berdasarkan nama kota
  Future<WeatherModel> getWeatherByCity(String city) async {
    final url = Uri.parse(
      '$_baseUrl?q=$city&appid=$_apiKey&units=metric&lang=id',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      return WeatherModel.fromJson(data);
    } else if (response.statusCode == 404) {
      throw Exception('Kota tidak ditemukan. Periksa kembali nama kota.');
    } else {
      throw Exception('Gagal mengambil data cuaca. Coba lagi.');
    }
  }
}
