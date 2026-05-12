Ujicoba API
Project ini menggabungkan dua aplikasi Flutter menjadi satu, yaitu aplikasi Login dengan Firebase Authentication dan aplikasi Weather API accuweather. Terdapat 6 file Dart utama yang masing-masing memiliki tanggung jawab berbeda sesuai dengan prinsip pemisahan tanggung jawab (separation of concerns).

1. main.dart
File main.dart adalah titik masuk dari seluruh aplikasi Flutter. File ini bertanggung jawab untuk menginisialisasi Firebase, mendefinisikan tema aplikasi, dan menentukan halaman awal yang ditampilkan berdasarkan status login pengguna.
1.1.  Fungsi main()

WidgetsFlutterBinding.ensureInitialized() dipanggil pertama kali untuk memastikan Flutter sudah siap sebelum menjalankan kode asinkron. Firebase.initializeApp() menginisialisasi koneksi ke Firebase menggunakan konfigurasi dari firebase_options.dart. Fungsi ini bersifat async sehingga harus menggunakan await agar proses inisialisasi selesai sebelum aplikasi berjalan.  
1.2.  Class MyApp

MyApp merupakan widget utama yang bersifat StatelessWidget karena tidak memiliki state yang berubah. MaterialApp mendefinisikan tema gelap (dark mode) dengan warna utama biru tua (0xFF1E3A5F) dan menggunakan Material Design 3. Home diset ke AuthWrapper yang bertugas memeriksa status login.
1.3.  Class AuthWrapper

AuthWrapper menggunakan StreamBuilder untuk mendengarkan perubahan status autentikasi secara real-time dari Firebase. authStateChanges() mengembalikan Stream yang memancarkan nilai setiap kali status login berubah. Jika snapshot.hasData bernilai true berarti pengguna sudah login dan aplikasi akan menampilkan WeatherPage. Sebaliknya, jika belum login maka akan ditampilkan LoginPage. Selama menunggu respons Firebase, ditampilkan indikator loading.

1. firebase_options.dart
File ini berisi konfigurasi koneksi antara aplikasi Flutter dan project Firebase. Setiap platform (Android, iOS, Web) memiliki konfigurasi tersendiri karena masing-masing menggunakan APP ID yang berbeda.
2.1.  Struktur Konfigurasi

Property currentPlatform bersifat getter yang secara otomatis mendeteksi platform yang sedang digunakan dan mengembalikan konfigurasi yang sesuai. kIsWeb memeriksa apakah aplikasi berjalan di browser web. defaultTargetPlatform mendeteksi platform mobile (Android/iOS).
2.2.  Parameter Konfigurasi Firebase

apiKey digunakan untuk mengidentifikasi project Firebase saat melakukan request API. appId adalah identifier unik aplikasi yang terdaftar di Firebase Console. messagingSenderId digunakan untuk layanan push notification. projectId adalah nama unik project Firebase. storageBucket adalah URL bucket penyimpanan Firebase Storage.

1. auth_service.dart
File ini berisi semua logika yang berhubungan dengan autentikasi pengguna menggunakan Firebase Authentication. Pola desain yang digunakan adalah Service Layer, di mana semua operasi terkait autentikasi dikelompokkan dalam satu class.
3.1.  Inisialisasi

FirebaseAuth.instance mengambil instance singleton dari Firebase Authentication. currentUser adalah getter yang mengembalikan pengguna yang sedang login, atau null jika belum login. authStateChanges adalah Stream yang terus memantau perubahan status login secara real-time.
3.2.  Fungsi Login

Fungsi signInWithEmail menerima email dan password sebagai parameter. email.trim() dan password.trim() digunakan untuk menghapus spasi di awal/akhir string yang tidak disengaja. Jika login berhasil, fungsi mengembalikan UserCredential. Jika gagal, exception FirebaseAuthException ditangkap dan dikonversi menjadi pesan error yang mudah dipahami oleh pengguna.
3.3.  Fungsi Register

Fungsi registerWithEmail membuat akun baru di Firebase Authentication menggunakan createUserWithEmailAndPassword. Proses ini sama dengan login namun menggunakan method yang berbeda. Firebase akan otomatis menyimpan data pengguna dan mengembalikan UserCredential jika berhasil.
3.4.  Fungsi Logout & Error Handler

signOut() memanggil _auth.signOut() yang akan membersihkan sesi pengguna dari perangkat dan Firebase secara bersamaan._handleAuthException() menggunakan switch-case untuk mengkonversi kode error Firebase (seperti 'user-not-found') menjadi pesan yang lebih mudah dipahami pengguna dalam Bahasa Indonesia.

1. weather_service.dart
File ini bertugas melakukan pemanggilan ke OpenWeatherMap API untuk mengambil data cuaca berdasarkan nama kota. Menggunakan package http untuk melakukan HTTP GET request.
4.1.  Konfigurasi API

_apiKey adalah kunci API dari OpenWeatherMap yang digunakan untuk autentikasi setiap request. Dideklarasikan sebagai static const karena nilainya tidak berubah dan dapat diakses tanpa membuat instance class._baseUrl adalah URL dasar endpoint API cuaca.
4.2.  Fungsi getWeatherByCity

Uri.parse() membuat objek URI dari string URL dengan query parameters: q adalah nama kota, appid adalah API key, units=metric mengatur satuan suhu ke Celsius, dan lang=id mengatur bahasa deskripsi cuaca ke Bahasa Indonesia. http.get(url) melakukan HTTP GET request secara asinkron. statusCode 200 berarti sukses, 404 berarti kota tidak ditemukan. jsonDecode() mengurai respons JSON menjadi Map Dart yang kemudian diteruskan ke WeatherModel.fromJson().

1. weather_model.dart
File ini mendefinisikan struktur data (model) untuk menyimpan informasi cuaca yang diterima dari API. Menggunakan pola Model/Entity yang umum dalam arsitektur aplikasi Flutter.
5.1.  Deklarasi Properties

Semua properties dideklarasikan sebagai final karena data cuaca bersifat tidak berubah setelah dibuat. Tipe data disesuaikan dengan format data dari API: String untuk teks, double untuk angka desimal, int untuk angka bulat.
5.2.  Factory Constructor fromJson

Factory constructor fromJson bertugas mengkonversi data JSON dari API menjadi objek WeatherModel. Operator ?? memberikan nilai default jika data dari API bernilai null. (json['main']['temp'] as num).toDouble() mengkonversi tipe data num dari JSON ke double Dart karena JSON tidak membedakan int dan double. json['weather'][0]['description'] mengakses elemen pertama dari array weather dalam respons JSON.
5.3.  Getter iconUrl

iconUrl adalah computed property (getter) yang menghasilkan URL lengkap untuk menampilkan ikon cuaca dari server OpenWeatherMap. @2x menandakan resolusi 2x (Retina) untuk tampilan yang lebih tajam di layar beresolusi tinggi.

1. login_page.dart
File ini berisi tampilan dan logika untuk halaman login dan register. Menggunakan StatefulWidget karena terdapat state yang berubah seperti status loading, toggle login/register, dan visibilitas password.
6.1.  State Variables

TextEditingController digunakan untuk mengambil dan mengontrol teks yang diketik pengguna pada field email dan password. _isLogin menentukan apakah form sedang dalam mode login atau register._isLoading mencegah pengguna mengklik tombol berkali-kali saat proses sedang berjalan.
6.2.  Fungsi _handleSubmit

Fungsi ini menangani proses submit form. Validasi dasar dilakukan terlebih dahulu sebelum memanggil API. setState(() => _isLoading = true) mengaktifkan loading indicator dan menonaktifkan tombol. if (mounted) pada blok finally memastikan widget masih ada di pohon widget sebelum memanggil setState, untuk menghindari error jika halaman sudah berpindah. Navigasi ke WeatherPage ditangani otomatis oleh AuthWrapper melalui stream Firebase.
6.3.  Tampilan UI

Latar belakang menggunakan LinearGradient dengan tiga warna biru tua untuk menciptakan efek gradasi yang elegan. SafeArea memastikan konten tidak tertutup oleh notch atau status bar perangkat. SingleChildScrollView memungkinkan halaman di-scroll ketika keyboard muncul sehingga form tetap terlihat.

1. weather_page.dart
File ini adalah halaman utama yang ditampilkan setelah pengguna berhasil login. Menampilkan informasi cuaca lengkap dan menyediakan fitur pencarian kota serta tombol logout.
7.1.  State Variables & initState

initState() dipanggil sekali saat widget pertama kali dibuat. Di sini digunakan untuk otomatis mengambil data cuaca kota Malang saat halaman pertama dibuka. WeatherModel? menggunakan tanda tanya yang berarti nullable — nilai awalnya null sebelum data API diterima.
7.2.  Fungsi _fetchWeather

Fungsi ini memanggil WeatherService untuk mengambil data cuaca. _errorMessage di-reset ke null setiap kali request baru dimulai agar error sebelumnya tidak ditampilkan. replaceAll('Exception: ', '') membersihkan prefix 'Exception: ' dari pesan error Dart agar tampil lebih rapi kepada pengguna.
7.3.  Fungsi Logout

showDialog menampilkan dialog konfirmasi sebelum logout untuk mencegah logout yang tidak disengaja. Setelah _authService.signOut() dipanggil, Firebase akan memperbarui authStateChanges stream yang didengarkan oleh AuthWrapper di main.dart, sehingga aplikasi otomatis berpindah ke LoginPage tanpa perlu navigasi manual.
7.4.  Tampilan Konten Cuaca

_buildWeatherContent() dipisah menjadi fungsi tersendiri untuk menjaga fungsi build() tetap bersih dan mudah dibaca. w.description.toUpperCase() mengubah deskripsi cuaca menjadi huruf kapital semua untuk efek visual. Image.network() menampilkan ikon cuaca langsung dari server OpenWeatherMap. GridView.count() dengan crossAxisCount: 2 menampilkan empat kartu informasi tambahan dalam grid 2 kolom.
7.5.  Logika Tampilan Bersyarat

Menggunakan ternary operator bersarang untuk menentukan widget mana yang ditampilkan berdasarkan state saat ini. Urutan prioritas: loading > error > data tersedia > kosong. Pola ini umum digunakan dalam Flutter untuk menangani tiga keadaan utama: loading, error, dan sukses.

Aplikasi Ketika Run di Android
Register dan login

Tampilan cuaca awal

Mencari cuaca kota lain

Logout
