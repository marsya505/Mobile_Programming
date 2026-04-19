### Jobsheet Flutter Layout dan Navigasi

### Praktikum 1: Membangun Layout di Flutter
Langkah 1: Buat Project Baru
Buatlah sebuah project flutter baru dengan nama layout_flutter. Atau sesuaikan style laporan praktikum yang Anda buat.

Langkah 2: Buka file lib/main.dart
Buka file main.dart lalu ganti dengan kode berikut. Isi nama dan NIM Anda di text title.
 
<img width="650" height="560" alt="Image" src="https://github.com/user-attachments/assets/c76bce41-2d2f-4ce1-8c6c-bf31430d1cc0" />

Langkah 4: Implementasi title row
Pertama, Anda akan membuat kolom bagian kiri pada judul. Tambahkan kode berikut di bagian atas metode build() di dalam kelas MyApp:
 
<img width="650" height="890" alt="Image" src="https://github.com/user-attachments/assets/65c51106-09a1-4a06-896a-fabb9cb34a76" />

<img width="591" height="619" alt="Image" src="https://github.com/user-attachments/assets/8d34bdc3-6ea5-4db3-89a5-766ca2331e2b" />

### Praktikum 2: Implementasi button row
Langkah 1: Buat method Column _buildButtonColumn
Bagian tombol berisi 3 kolom yang menggunakan tata letak yang sama—sebuah ikon di atas baris teks. Kolom pada baris ini diberi jarak yang sama, dan teks serta ikon diberi warna primer.
Karena kode untuk membangun setiap kolom hampir sama, buatlah metode pembantu pribadi bernama buildButtonColumn(), yang mempunyai parameter warna, Icon dan Text, sehingga dapat mengembalikan kolom dengan widgetnya sesuai dengan warna tertentu.
lib/main.dart (_buildButtonColumn)
 
<img width="709" height="505" alt="Image" src="https://github.com/user-attachments/assets/642f90dd-2d26-4028-80f4-db35afe20e6f" />

Langkah 2: Buat widget buttonSection
Buat Fungsi untuk menambahkan ikon langsung ke kolom. Teks berada di dalam Container dengan margin hanya di bagian atas, yang memisahkan teks dari ikon.
Bangun baris yang berisi kolom-kolom ini dengan memanggil fungsi dan set warna, Icon, dan teks khusus melalui parameter ke kolom tersebut. Sejajarkan kolom di sepanjang sumbu utama menggunakan MainAxisAlignment.spaceEvenly untuk mengatur ruang kosong secara merata sebelum, di antara, dan setelah setiap kolom. Tambahkan kode berikut tepat di bawah deklarasi titleSection di dalam metode build():
lib/main.dart (buttonSection)
 
<img width="591" height="274" alt="Image" src="https://github.com/user-attachments/assets/ffbd5967-0240-4ce9-bf13-f616f00065a0" />

Langkah 3: Tambah button section ke body
Tambahkan variabel buttonSection ke dalam body seperti berikut:
 
<img width="650" height="363" alt="Image" src="https://github.com/user-attachments/assets/7dcbfd68-077f-4ed7-92a1-f53ca2c9d01f" />

<img width="590" height="648" alt="Image" src="https://github.com/user-attachments/assets/f06aab72-bf93-4436-a02d-72356cac07dc" />

Praktikum 3: Implementasi text section
Langkah 1: Buat widget textSection
Tentukan bagian teks sebagai variabel. Masukkan teks ke dalam Container dan tambahkan padding di sepanjang setiap tepinya. Tambahkan kode berikut tepat di bawah deklarasi buttonSection:

<img width="531" height="313" alt="Image" src="https://github.com/user-attachments/assets/12e1830f-9396-4a41-a47d-e0b9d09fc078" />

Dengan memberi nilai softWrap = true, baris teks akan memenuhi lebar kolom sebelum membungkusnya pada batas kata.
Langkah 2: Tambahkan variabel text section ke body
Tambahkan widget variabel textSection ke dalam body seperti berikut:

<img width="650" height="397" alt="Image" src="https://github.com/user-attachments/assets/ce13555d-f40e-467e-93ef-5338b3e3b996" />

<img width="591" height="647" alt="Image" src="https://github.com/user-attachments/assets/96d8e9fd-8d53-4eaf-a35b-764f8bd350a8" />

### Praktikum 4: Implementasi image section
Langkah 1: Siapkan aset gambar
Anda dapat mencari gambar di internet yang ingin ditampilkan. Buatlah folder images di root project layout_flutter. Masukkan file gambar tersebut ke folder images, lalu set nama file tersebut ke file pubspec.yaml seperti berikut:
 
<img width="354" height="158" alt="Image" src="https://github.com/user-attachments/assets/bece9281-267e-48aa-8325-2a6c81e9ae09" />

Langkah 2: Tambahkan gambar ke body
Tambahkan aset gambar ke dalam body seperti berikut:
 
<img width="354" height="320" alt="Image" src="https://github.com/user-attachments/assets/c1a7de8b-5242-4a50-bf87-3ae63fc7e1ea" />

BoxFit.cover memberi tahu kerangka kerja bahwa gambar harus sekecil mungkin tetapi menutupi seluruh kotak rendernya.
Langkah 3: Terakhir, ubah menjadi ListView
Pada langkah terakhir ini, atur semua elemen dalam ListView, bukan Column, karena ListView mendukung scroll yang dinamis saat aplikasi dijalankan pada perangkat yang resolusinya lebih kecil.
 
<img width="354" height="38" alt="Image" src="https://github.com/user-attachments/assets/0cfc7215-82c5-4a56-8c04-17385116afc0" />

<img width="591" height="798" alt="Image" src="https://github.com/user-attachments/assets/cc28c381-90d8-4d6b-8bd1-cefeb93d0afe" />

### Tugas Praktikum 1
Implementasikan di project baru "basic_layout_flutter" dengan mengakses sumber ini: https://docs.flutter.dev/codelabs/layout-basics
**Lay out a widget**
A Flutter app is itself a widget, and most widgets have a build() method. Instantiating and returning a widget in the app's build() method displays the widget.
 
<img width="709" height="442" alt="Image" src="https://github.com/user-attachments/assets/6e0b7562-6bb8-45e8-91f9-3831ee83779d" />

After you've added your widgets, run your app. When you run the app, you should see Hello World.

<img width="472" height="685" alt="Image" src="https://github.com/user-attachments/assets/5be065ab-a127-4a5e-808a-f06ad512fdfa" />

**Lay out multiple widgets vertically and horizontally**
One of the most common layout patterns is to arrange widgets vertically or horizontally. You can use a Row widget to arrange widgets horizontally, and a Column widget to arrange widgets vertically.
 
<img width="591" height="557" alt="Image" src="https://github.com/user-attachments/assets/c3f1499b-db36-4951-a87d-47fdd73b0087" />

<img width="591" height="785" alt="Image" src="https://github.com/user-attachments/assets/08d4903b-dc57-48a3-b1d9-d70e2e527998" />

**Sizing widgets**
When a layout is too large to fit a device, a yellow and black striped pattern appears along the affected edge. Widgets can be sized to fit within a row or column by using the Expanded widget. To fix the previous where the row of images is too wide for its render box, wrap each image with an Expanded widget.

<img width="650" height="244" alt="Image" src="https://github.com/user-attachments/assets/8822fd20-a120-4a2f-b34b-a70a92ba612b" />

<img width="591" height="824" alt="Image" src="https://github.com/user-attachments/assets/6f5fe7dd-af8e-49b4-a18f-89f85bec24af" />

<img width="650" height="253" alt="Image" src="https://github.com/user-attachments/assets/9422793e-c4b7-46e4-8d64-95641df81bed" />

<img width="591" height="824" alt="Image" src="https://github.com/user-attachments/assets/48680851-2529-42ee-b50d-8e4206571485" />

**Packing widgets**
By default, a row or column occupies as much space along its main axis as possible, but if you want to pack the children closely together, set its mainAxisSize to MainAxisSize.min. The following example uses this property to pack the star icons together.
 
<img width="591" height="285" alt="Image" src="https://github.com/user-attachments/assets/8bd87c29-149d-47d1-a110-e3ea860cd4d6" />

<img width="531" height="742" alt="Image" src="https://github.com/user-attachments/assets/ad4f4192-75e6-4bfd-857a-fd29e389e1f1" />

**Nesting rows and columns**
The layout framework allows you to nest rows and columns inside of rows and columns as deeply as you need. 
The outlined section is implemented as two rows. The ratings row contains five stars and the number of reviews. The icons row contains three columns of icons and text.
The widget tree for the ratings row:
 
<img width="531" height="442" alt="Image" src="https://github.com/user-attachments/assets/2520acb7-419d-4ea3-9bd1-7c6aeec2dfe8" />

The ratings variable creates a row containing a smaller row of 5-star icons, and text:

<img width="620" height="809" alt="Image" src="https://github.com/user-attachments/assets/1feef19a-b723-4134-a93f-a28052a07205" />

The icons row, below the ratings row, contains 3 columns; each column contains an icon and two lines of text, as you can see in its widget tree:
 
<img width="709" height="323" alt="Image" src="https://github.com/user-attachments/assets/ff1b44e9-fb94-4527-9ebd-9a9a1bf07a49" />

The iconList variable defines the icons row:
 
<img width="650" height="256" alt="Image" src="https://github.com/user-attachments/assets/db901b9a-6c26-499c-9185-2646c29edb33" />

<img width="650" height="800" alt="Image" src="https://github.com/user-attachments/assets/c1ea59a8-d295-4797-8702-63b5e7123f25" />

The leftColumn variable contains the ratings and icons rows, as well as the title and text that describes the Pavlova:
 
<img width="650" height="178" alt="Image" src="https://github.com/user-attachments/assets/b4adcaa0-8db6-422d-91d0-0b6bd1c2b7d9" />

The left column is placed in a SizedBox to constrain its width. Finally, the UI is constructed with the entire row (containing the left column and the image) inside a Card.
The Pavlova image is from Pixabay. You can embed an image from the net using Image.network() but, for this example, the image is saved to an images directory in the project, added to the pubspec file, and accessed using Images.asset().
 
<img width="650" height="436" alt="Image" src="https://github.com/user-attachments/assets/63161d50-0c86-46fb-b010-71bf2adbbbe1" />

<img width="650" height="769" alt="Image" src="https://github.com/user-attachments/assets/700bb75d-0ab4-457b-beb8-ef134ff52960" />

**Common layout widgets**
The widgets fall into two categories: standard widgets from the widgets library, and specialized widgets from the Material library. Any app can use the widgets library but only Material apps can use the Material Components library.
**Container**
Many layouts make liberal use of Containers to separate widgets using padding, or to add borders or margins. You can change the device's background by placing the entire layout into a Container and changing its background color or image.

<img width="413" height="290" alt="Image" src="https://github.com/user-attachments/assets/0b8dfc02-0c26-4d9e-bbb6-d0ca8409ca96" />
 
Examples (Container)
This layout consists of a column with two rows, each containing 2 images. A Container is used to change the background color of the column to a lighter grey.
 
<img width="679" height="239" alt="Image" src="https://github.com/user-attachments/assets/7bacabcf-7963-4584-9062-e9936100c28b" />

<img width="591" height="805" alt="Image" src="https://github.com/user-attachments/assets/c8f6e67d-597a-463a-8bac-ba8ec534c29f" />

A Container is also used to add a rounded border and margins to each image:

<img width="768" height="415" alt="Image" src="https://github.com/user-attachments/assets/6e8caf1b-5721-484a-b043-ca141c007f23" />

**GridView**
Use GridView to lay widgets out as a two-dimensional list. GridView provides two pre-fabricated lists, or you can build your own custom grid. When a GridView detects that its contents are too long to fit the render box, it automatically scrolls.

<img width="709" height="919" alt="Image" src="https://github.com/user-attachments/assets/388bd647-5cb7-4dbb-91b4-ab74091b00d3" />

<img width="650" height="959" alt="Image" src="https://github.com/user-attachments/assets/c6fc0c3f-26c5-49b2-8386-5e16c71c7863" />
 
**ListView**
ListView, a column-like widget, automatically provides scrolling when its content is too long for its render box.
Uses ListView to display a list of businesses using ListTiles. A Divider separates the theaters from the restaurants.
 
<img width="768" height="690" alt="Image" src="https://github.com/user-attachments/assets/159c1c2b-560d-49b9-8d6c-c5d11b5e64bc" />

<img width="709" height="259" alt="Image" src="https://github.com/user-attachments/assets/f772c203-6e4e-4591-b3c6-9ecb9e91ec9f" />

<img width="650" height="994" alt="Image" src="https://github.com/user-attachments/assets/2ddb4566-b13a-4deb-a849-92f7d76ae5c7" />
 
**Stack**
Use Stack to arrange widgets on top of a base widget—often an image. The widgets can completely or partially overlap the base widget.

<img width="650" height="479" alt="Image" src="https://github.com/user-attachments/assets/4a7520b3-a240-4cfa-b465-07e8e2afaa44" />

<img width="709" height="568" alt="Image" src="https://github.com/user-attachments/assets/331df147-8ec9-4a4f-86a5-8ff240c5b519" />

<img width="591" height="903" alt="Image" src="https://github.com/user-attachments/assets/2a8e9788-34b4-444b-a486-45fd2563cd88" />

**Card**
A Card, from the Material library, contains related nuggets of information and can be composed of almost any widget, but is often used with ListTile. Card has a single child, but its child can be a column, row, list, grid, or other widget that supports multiple children. By default, a Card shrinks its size to 0 by 0 pixels. You can use SizedBox to constrain the size of a card.
In Flutter, a Card features slightly rounded corners and a drop shadow, giving it a 3D effect. Changing a Card's elevation property allows you to control the drop shadow effect. Setting the elevation to 24, for example, visually lifts the Card further from the surface and causes the shadow to become more dispersed. For a list of supported elevation values, see Elevation in the Material guidelines. Specifying an unsupported value disables the drop shadow entirely.

<img width="591" height="523" alt="Image" src="https://github.com/user-attachments/assets/41c860e3-8611-4136-b6ae-f8605671a8e9" />

<img width="709" height="737" alt="Image" src="https://github.com/user-attachments/assets/d3b8a372-5de4-42fc-8599-c89b49f23850" />

<img width="591" height="903" alt="Image" src="https://github.com/user-attachments/assets/46ab5b1d-3d08-483f-ac11-e5e9a701e3d8" />

**ListTile**
Use ListTile, a specialized row widget from the Material library, for an easy way to create a row containing up to 3 lines of text and optional leading and trailing icons. ListTile is most commonly used in Card or ListView, but can be used elsewhere.

<img width="591" height="402" alt="Image" src="https://github.com/user-attachments/assets/491014d6-abaf-445e-a739-70a2727263f8" />

<img width="650" height="628" alt="Image" src="https://github.com/user-attachments/assets/75d78fba-5aad-4979-bc61-00bf7002dfee" />

<img width="591" height="903" alt="Image" src="https://github.com/user-attachments/assets/277e4e21-9997-4619-b1e9-5c482b0a851f" />

### Praktikum 5: Membangun Navigasi di Flutter
Langkah 1: Siapkan project baru
Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama belanja dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.
 
<img width="266" height="179" alt="Image" src="https://github.com/user-attachments/assets/941f080a-fe43-480e-8a1b-379b5d5d5f6a" />

Langkah 2: Mendefinisikan Route
Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut.
 
<img width="531" height="304" alt="Image" src="https://github.com/user-attachments/assets/e646aae8-45cd-48a4-bdcd-33e2ac984942" />

<img width="650" height="354" alt="Image" src="https://github.com/user-attachments/assets/522fcde6-5f94-4333-a682-bb316eeebb5e" />

Langkah 3: Lengkapi Kode di main.dart
Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.
 
<img width="591" height="440" alt="Image" src="https://github.com/user-attachments/assets/2a017142-5150-4c33-a11f-d16db18f223d" />

Langkah 4: Membuat data model
Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.
 
<img width="591" height="193" alt="Image" src="https://github.com/user-attachments/assets/c9811c07-bf09-4608-a19d-763ec653e370" />

Langkah 5: Lengkapi kode di class HomePage
Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.
 
<img width="531" height="268" alt="Image" src="https://github.com/user-attachments/assets/684a6841-d0fd-4b60-8a48-18d804316308" />

Langkah 6: Membuat ListView dan itemBuilder
Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.
 
<!-- Failed to upload "image.png" -->

Jalankan aplikasi pada emulator atau pada device anda.

<img width="591" height="467" alt="Image" src="https://github.com/user-attachments/assets/041ecbdf-0081-48b4-9c37-23e5f0014764" />

Langkah 7: Menambahkan aksi pada ListView
Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell.
Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.

<img width="472" height="109" alt="Image" src="https://github.com/user-attachments/assets/21bbfb44-d3db-4daa-b093-9233556273f6" />

<img width="591" height="871" alt="Image" src="https://github.com/user-attachments/assets/968f8ee4-9dfa-4b23-b50a-812c8bab51b3" />

Klik on Sugar

<img width="591" height="636" alt="Image" src="https://github.com/user-attachments/assets/82c7ee15-9c12-44af-8256-89eb5f2ef1fc" />

Klik on Salt

<img width="591" height="616" alt="Image" src="https://github.com/user-attachments/assets/c3a92aec-1cff-4993-bbb3-9f077df47000" />
 
### Tugas Praktikum 2

1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

<img width="650" height="108" alt="Image" src="https://github.com/user-attachments/assets/32fa29f6-257b-464a-867a-0ed73f44ee24" />

2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya. (https://docs.flutter.dev/cookbook/navigation/navigate-with-arguments)
 
<img width="768" height="37" alt="Image" src="https://github.com/user-attachments/assets/44873149-5ab5-44b9-897d-d0672c0826d5" />

3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

<img width="354" height="470" alt="Image" src="https://github.com/user-attachments/assets/f15e4bbc-d68b-42a7-b17e-8c20b95b6286" />

<img width="709" height="417" alt="Image" src="https://github.com/user-attachments/assets/639e84c2-426b-47d3-b153-d0485a31fda5" />

4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations 
 
<img width="738" height="291" alt="Image" src="https://github.com/user-attachments/assets/be892685-b081-4e18-a9bd-a4a927205584" />

<img width="325" height="258" alt="Image" src="https://github.com/user-attachments/assets/33cc2347-a463-4043-a244-6aa0942d2641" />

5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.
Merapikan widget

<img width="354" height="39" alt="Image" src="https://github.com/user-attachments/assets/d6904498-feeb-42b2-bbea-a1a7e09af454" />

<img width="709" height="112" alt="Image" src="https://github.com/user-attachments/assets/e2f963cf-6788-432d-9848-318bb2e2fd45" />

<img width="531" height="456" alt="Image" src="https://github.com/user-attachments/assets/a2b510b6-bea8-4ac2-b95c-2b1424e9d849" />

<img width="591" height="872" alt="Image" src="https://github.com/user-attachments/assets/731b37b3-ea63-42de-979a-4b48fb211ffc" />

<img width="591" height="738" alt="Image" src="https://github.com/user-attachments/assets/4566f806-bb45-48e2-94ab-9c7d34cecc7e" />

<img width="590" height="738" alt="Image" src="https://github.com/user-attachments/assets/1735af98-5298-475c-b7e3-48f9e4d4876b" />

6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

<img width="650" height="979" alt="Image" src="https://github.com/user-attachments/assets/fd73f983-29e5-4d5e-a20e-e5f0caccfad6" />

<img width="768" height="207" alt="Image" src="https://github.com/user-attachments/assets/80808669-594b-4321-a0ea-9b9367333a95" />

<img width="531" height="124" alt="Image" src="https://github.com/user-attachments/assets/b480be4b-1e83-46e2-abd0-ff61b36f745b" />

<img width="472" height="127" alt="Image" src="https://github.com/user-attachments/assets/a8335176-7ea1-4d12-addd-a75d62608060" />

<img width="591" height="872" alt="Image" src="https://github.com/user-attachments/assets/cf3d1a46-0cca-4cc2-a96e-4f3d5566bc39" />

<img width="591" height="738" alt="Image" src="https://github.com/user-attachments/assets/83b47d13-3fa3-43b7-95f4-58aaf291388e" />

<img width="590" height="738" alt="Image" src="https://github.com/user-attachments/assets/8dd55109-58de-4bd9-8265-abf9cb042505" />
