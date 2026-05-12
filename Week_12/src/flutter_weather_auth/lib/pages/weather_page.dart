import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../../services/auth_service.dart';
import '../../services/weather_service.dart';
import '../../models/weather_model.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final AuthService _authService = AuthService();
  final WeatherService _weatherService = WeatherService();
  final TextEditingController _cityController = TextEditingController();

  WeatherModel? _weather;
  bool _isLoading = false;
  String? _errorMessage;

  // Kota default saat pertama buka
  String _currentCity = 'Malang';

  @override
  void initState() {
    super.initState();
    _fetchWeather(_currentCity);
  }

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  Future<void> _fetchWeather(String city) async {
    setState(() {
      _isLoading = true;
      _errorMessage = null;
    });

    try {
      final weather = await _weatherService.getWeatherByCity(city);
      setState(() {
        _weather = weather;
        _currentCity = city;
      });
    } catch (e) {
      setState(() => _errorMessage = e.toString().replaceAll('Exception: ', ''));
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  // Logout user
  Future<void> _handleLogout() async {
    await _authService.signOut();
    // AuthWrapper di main.dart otomatis mengarahkan ke LoginPage
  }

  // Tampilkan dialog konfirmasi logout
  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        backgroundColor: const Color(0xFF1B4F72),
        title: const Text('Logout', style: TextStyle(color: Colors.white)),
        content: const Text(
          'Apakah kamu yakin ingin keluar?',
          style: TextStyle(color: Colors.white70),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(ctx),
            child: const Text('Batal', style: TextStyle(color: Colors.white60)),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(ctx);
              _handleLogout();
            },
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF1E3A5F),
              Color(0xFF0D1B2A),
              Color(0xFF1B4F72),
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header: Email user & tombol logout
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                child: Row(
                  children: [
                    const Icon(Icons.person_outline,
                        color: Colors.white60, size: 20),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        user?.email ?? '',
                        style: const TextStyle(
                          color: Colors.white60,
                          fontSize: 13,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    IconButton(
                      onPressed: _showLogoutDialog,
                      icon: const Icon(Icons.logout, color: Colors.white60),
                      tooltip: 'Logout',
                    ),
                  ],
                ),
              ),

              // Search Bar
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _cityController,
                        style: const TextStyle(color: Colors.white),
                        textInputAction: TextInputAction.search,
                        onSubmitted: (value) {
                          if (value.isNotEmpty) _fetchWeather(value);
                        },
                        decoration: InputDecoration(
                          hintText: 'Cari kota...',
                          hintStyle: TextStyle(
                              color: Colors.white.withOpacity(0.5)),
                          prefixIcon: const Icon(Icons.search,
                              color: Colors.white60),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(
                                color: Colors.white.withOpacity(0.3)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide:
                                const BorderSide(color: Colors.white),
                          ),
                          filled: true,
                          fillColor: Colors.white.withOpacity(0.1),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        if (_cityController.text.isNotEmpty) {
                          _fetchWeather(_cityController.text);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: const Color(0xFF1E3A5F),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 16),
                      ),
                      child: const Text(
                        'Cari',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 20),

              // Konten Cuaca
              Expanded(
                child: _isLoading
                    ? const Center(
                        child: CircularProgressIndicator(color: Colors.white),
                      )
                    : _errorMessage != null
                        ? _buildErrorWidget()
                        : _weather != null
                            ? _buildWeatherContent()
                            : const SizedBox(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildErrorWidget() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.error_outline, color: Colors.redAccent, size: 60),
          const SizedBox(height: 16),
          Text(
            _errorMessage!,
            style: const TextStyle(color: Colors.white70, fontSize: 16),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () => _fetchWeather(_currentCity),
            icon: const Icon(Icons.refresh),
            label: const Text('Coba Lagi'),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white24,
              foregroundColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildWeatherContent() {
    final w = _weather!;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          // Kota & Negara
          Text(
            '${w.cityName}, ${w.country}',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 4),
          Text(
            w.description.toUpperCase(),
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 14,
              letterSpacing: 2,
            ),
          ),

          // Icon Cuaca dari OpenWeatherMap
          Image.network(
            w.iconUrl,
            width: 120,
            height: 120,
            errorBuilder: (_, __, ___) =>
                const Icon(Icons.cloud, size: 100, color: Colors.white),
          ),

          // Suhu Utama
          Text(
            '${w.temperature.round()}°C',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 72,
              fontWeight: FontWeight.w200,
              letterSpacing: -2,
            ),
          ),

          Text(
            'Terasa seperti ${w.feelsLike.round()}°C',
            style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 8),
          Text(
            '↓ ${w.tempMin.round()}°   ↑ ${w.tempMax.round()}°',
            style: TextStyle(
              color: Colors.white.withOpacity(0.7),
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 28),

          // Grid Info Cuaca
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 1.6,
            children: [
              _buildInfoCard(
                icon: Icons.water_drop_outlined,
                label: 'Kelembaban',
                value: '${w.humidity}%',
              ),
              _buildInfoCard(
                icon: Icons.air,
                label: 'Angin',
                value: '${w.windSpeed} m/s',
              ),
              _buildInfoCard(
                icon: Icons.visibility_outlined,
                label: 'Visibilitas',
                value: '${(w.visibility / 1000).toStringAsFixed(1)} km',
              ),
              _buildInfoCard(
                icon: Icons.speed,
                label: 'Tekanan',
                value: '${w.pressure} hPa',
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Tombol Refresh
          TextButton.icon(
            onPressed: () => _fetchWeather(_currentCity),
            icon: const Icon(Icons.refresh, color: Colors.white60, size: 18),
            label: Text(
              'Perbarui',
              style: TextStyle(color: Colors.white.withOpacity(0.6)),
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required IconData icon,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.white.withOpacity(0.15)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(icon, color: Colors.white60, size: 22),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                value,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                label,
                style: TextStyle(
                  color: Colors.white.withOpacity(0.6),
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
