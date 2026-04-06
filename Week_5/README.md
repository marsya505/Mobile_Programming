> ### **Jobsheet Flutter 1**
### Praktikum 1: Membuat Project Flutter Baru
Langkah 1:
Buka VS Code, lalu tekan tombol Ctrl + Shift + P maka akan tampil Command Palette, lalu ketik Flutter. Pilih New Application Project.

<img width="591" height="445" alt="Image" src="https://github.com/user-attachments/assets/4a8a9d96-b55c-4c71-83c5-fe95158ed559" />

<img width="591" height="374" alt="Image" src="https://github.com/user-attachments/assets/096c927b-2c56-415d-8798-aef17cbd37c1" />

Langkah 2:
Kemudian buat folder sesuai style laporan praktikum yang Anda pilih. Disarankan pada folder dokumen atau desktop atau alamat folder lain yang tidak terlalu dalam atau panjang. Lalu pilih Select a folder to create the project in.

<img width="591" height="417" alt="Image" src="https://github.com/user-attachments/assets/ec59b5cd-add4-4bfa-9efa-464754905717" />

Langkah 3:
Buat nama project flutter hello_world seperti berikut, lalu tekan Enter. Tunggu hingga proses pembuatan project baru selesai.

<img width="591" height="158" alt="Image" src="https://github.com/user-attachments/assets/9df67a17-c9bf-4736-a0ed-b6c68aef37a9" />

Langkah 4:
Jika sudah selesai proses pembuatan project baru, pastikan tampilan seperti berikut.

<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/c35b01bf-8a2b-4d16-849f-576a472e9a8a" />

### Praktikum 2: Menghubungkan Perangkat Android atau Emulator
Melanjutkan dari praktikum 1, Anda diminta untuk menjalankan aplikasi ke perangkat fisik (device Android atau iOS). 
Cari About Phone di Pengatuhan device android
 
<img width="591" height="385" alt="Image" src="https://github.com/user-attachments/assets/bfa2d145-b7bd-4fdd-8e5c-0dea3024c1ab" />

Klik Version
 
<img width="591" height="163" alt="Image" src="https://github.com/user-attachments/assets/e12258c3-c0ad-4e9a-8597-46877936c238" />

Klik 7 kali secara cepat di Build Number
 
<img width="654" height="395" alt="Image" src="https://github.com/user-attachments/assets/6b8fdabb-6060-4101-9944-9a2883b2d0a3" />

Pilih System
 
<img width="591" height="385" alt="Image" src="https://github.com/user-attachments/assets/387ddaa7-e05e-4dbb-89c8-e32af51d9115" />

Pilih Developer options
 
<img width="654" height="440" alt="Image" src="https://github.com/user-attachments/assets/f2be6e22-a0e0-4afb-be0a-918d19b6a26d" />

Klik USB debugging 
 
<img width="654" height="295" alt="Image" src="https://github.com/user-attachments/assets/7ba36bba-4dbd-4a1d-aef8-932331040467" />

Centang Always Allow dan klik Allow
 
<img width="587" height="321" alt="Image" src="https://github.com/user-attachments/assets/9f0ff56e-2de1-4587-a51c-1461e099630a" />

Jalankan main.dart dengan device anddroid yg sudah si sambungkan dengan kabel USB ke laptop
 
<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/756a7d8e-dbab-4a14-911a-c0765f15b49a" />

Maka di device android akan muncul seperti dibawah
 
<img width="591" height="1312" alt="Image" src="https://github.com/user-attachments/assets/6938285d-8f7c-42cd-ab58-2cedad6b4512" />

### Praktikum 4: Menerapkan Widget Dasar
Langkah 1: Text Widget
Buat folder baru basic_widgets di dalam folder lib. Kemudian buat file baru di dalam basic_widgets dengan nama text_widget.dart. Ketik atau salin kode program berikut ke project hello_world Anda pada file text_widget.dart.
 
<img width="768" height="390" alt="Image" src="https://github.com/user-attachments/assets/1f97f6f3-c5bd-423d-bf51-608b52a5288d" />

Lakukan import file text_widget.dart ke main.dart, lalu ganti bagian text widget dengan kode di atas. Maka hasilnya seperti gambar berikut.
 
<img width="827" height="465" alt="Image" src="https://github.com/user-attachments/assets/8de08559-1b72-492b-9ecf-61acdd57b867" />

Langkah 2: Image Widget
Buat sebuah file image_widget.dart di dalam folder basic_widgets dengan isi kode berikut
 
<img width="768" height="339" alt="Image" src="https://github.com/user-attachments/assets/76a5e880-68af-44c1-8c24-26da46e83bd3" />

Lakukan penyesuaian asset pada file pubspec.yaml dan tambahkan file logo Anda di folder assets project hello_world.
 
<img width="314" height="75" alt="Image" src="https://github.com/user-attachments/assets/469285a1-f370-4643-ab1b-b6a1f48fddfb" />

Jangan lupa sesuaikan kode dan import di file main.dart kemudian akan tampil gambar seperti berikut.
 
<img width="827" height="465" alt="Image" src="https://github.com/user-attachments/assets/16752955-5298-4a69-88fe-ce6cd3354cd1" />

### Praktikum 5: Menerapkan Widget Material Design dan iOS Cupertino
Langkah 1: Cupertino Button dan Loading Bar
Buat file di basic_widgets > loading_cupertino.dart. Import stateless widget dari material dan cupertino. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
 
<img width="591" height="598" alt="Image" src="https://github.com/user-attachments/assets/ddc89a92-3802-47b0-879c-35d7de494ef1" />

<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/59e67864-7d5f-4e21-a03b-c57ff17b9187" />

Langkah 2: Floating Action Button (FAB)
Button widget terdapat beberapa macam pada flutter yaitu ButtonBar, DropdownButton, TextButton, FloatingActionButton, IconButton, OutlineButton, PopupMenuButton, dan ElevatedButton.
Buat file di basic_widgets > fab_widget.dart. Import stateless widget dari material. Lalu isi kode di dalam method Widget build adalah sebagai berikut.
 
<img width="709" height="619" alt="Image" src="https://github.com/user-attachments/assets/61703a05-de49-4c31-bf7d-fbf74f3ee8f6" />
 
<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/c9fbb90b-d04e-4b54-9a35-a04862c67c4c" />

Langkah 3: Scaffold Widget
Scaffold widget digunakan untuk mengatur tata letak sesuai dengan material design. Ubah isi kode main.dart seperti berikut.

<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/426f13a5-58de-44d5-b5f6-713f8a2a59fe" />

<img width="600" height="1386" alt="Image" src="https://github.com/user-attachments/assets/3986bb36-7be0-492d-93df-f14f038ebb57" />

Langkah 4: Dialog Widget
Dialog widget pada flutter memiliki dua jenis dialog yaitu AlertDialog dan SimpleDialog. Ubah isi kode main.dart seperti berikut.
  
<img width="419" height="1498" alt="Image" src="https://github.com/user-attachments/assets/9ef30cbb-1a7c-4126-87ff-0d5375da4051" />
 

<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/fe2c95f9-0b17-4df3-b505-667ec81ed8ed" />

<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/bd0a6025-1a9b-43e7-9fa5-bb15ea090fc0" />

Langkah 5: Input dan Selection Widget
Flutter menyediakan widget yang dapat menerima input dari pengguna aplikasi yaitu antara lain Checkbox, Date and Time Pickers, Radio Button, Slider, Switch, TextField.
Contoh penggunaan TextField widget adalah sebagai berikut:
 
<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/1ebb0282-0f8e-4bc7-9083-d2aee2877f5c" />

Langkah 6: Date and Time Pickers
Date and Time Pickers termasuk pada kategori input dan selection widget, berikut adalah contoh penggunaan Date and Time Pickers.
 
<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/516e9c7b-b24c-45ab-8ed3-1f4769180104" />

<img width="614" height="1381" alt="Image" src="https://github.com/user-attachments/assets/6457412d-fcbb-40da-8929-924030230c98" />

<img width="768" height="432" alt="Image" src="https://github.com/user-attachments/assets/6123cbb9-6917-408d-b057-f38674808969" />

### Flutter app

### 1. Create a project

a.	Create your first Flutter project
Launch Visual Studio Code and open the command palette. Start typing "flutter new". Select the Flutter: New Project command.
 
<img width="591" height="315" alt="Image" src="https://github.com/user-attachments/assets/282d311a-fa2f-420e-9512-74068fe53df1" />

Next, select Application and then a folder in which to create your project. This could be your home directory, or something like C:\src\.
 
<img width="591" height="265" alt="Image" src="https://github.com/user-attachments/assets/bdca3ea6-579d-41a5-9428-777ab270aba5" />

Name your project namer_app 
 
<img width="591" height="103" alt="Image" src="https://github.com/user-attachments/assets/43db74fa-9d8a-4e9c-bbba-88b837ef980f" />

b.	Copy & Paste the initial app
In the left panel of VS Code, make sure that Explorer is selected, and open the pubspec.yaml file.
Replace the contents of this file:
 
<img width="768" height="596" alt="Image" src="https://github.com/user-attachments/assets/b7ac9632-2992-4574-ac74-b07891f838c7" />

Next, open another configuration file in the project, analysis_options.yaml.
Replace its contents with the following:
 
<img width="768" height="481" alt="Image" src="https://github.com/user-attachments/assets/687027b0-08d3-431f-aff6-7f6d0d68879d" />

Open the main.dart file under the lib/ directory.
Replace the contents of this file with the following:
 
<img width="768" height="739" alt="Image" src="https://github.com/user-attachments/assets/1897a195-750b-4dff-94b1-afff8e1828e3" />

### 2. Add a button

This step adds a Next button to generate a new word pairing.
a.	Launch the app
First, open lib/main.dart and make sure that the target device selected. At the bottom right corner of VS Code, find a button that shows the current target device. Click to change it.
 
<img width="768" height="261" alt="Image" src="https://github.com/user-attachments/assets/69e8b5f8-e611-4e2c-a913-470cbdb3fd04" />

While lib/main.dart is open, find the "play" button in the upper right-hand corner of VS Code's window, and click it.

<img width="768" height="592" alt="Image" src="https://github.com/user-attachments/assets/bbec8c57-970f-40d4-bd42-81a32e875bb1" />

b.	First Hot Reload
At the bottom of lib/main.dart, add something to the string in the first Text object, and save the file (with Ctrl+S or Cmd+S). 
 
<img width="768" height="352" alt="Image" src="https://github.com/user-attachments/assets/409fce44-a94d-4aac-b1af-db00fe08b5a4" />

<img width="768" height="592" alt="Image" src="https://github.com/user-attachments/assets/b0c1aeac-4439-4c54-b074-597953f422e5" />

c.	Adding a button
Next, add a button at the bottom of the Column, right below the second Text instance.
A button appears and, when you click it, the Debug Console in VS Code shows a button pressed! message.
 
<img width="768" height="421" alt="Image" src="https://github.com/user-attachments/assets/58813332-4402-4383-b79e-ee6605c596b5" />

d.	Your first behavior
Scroll to MyAppState and add a getNext method.
 
<img width="502" height="273" alt="Image" src="https://github.com/user-attachments/assets/3cbda398-a357-4341-845a-96e4a06c52c1" />

The new getNext() method reassigns current with a new random WordPair. It also calls notifyListeners()(a method of ChangeNotifier)that ensures that anyone watching MyAppState is notified.
All that remains is to call the getNext method from the button's callback.
 
<img width="650" height="179" alt="Image" src="https://github.com/user-attachments/assets/ae249a75-93ee-4a62-8995-54b6af86b3ad" />

Save and try the app now. It should generate a new random word pair every time we press the Next button.
 
<img width="768" height="592" alt="Image" src="https://github.com/user-attachments/assets/1264997a-53b1-4041-a460-4d0d564e45e2" />

### 3. Make the app prettier
This is how the app looks at the moment.
 
<img width="768" height="592" alt="Image" src="https://github.com/user-attachments/assets/d3c0ccda-757f-4948-960d-a59ba435f384" />

a.	Extract a widget
Rewrite the MyHomePage widget as follows:
 
<img width="768" height="608" alt="Image" src="https://github.com/user-attachments/assets/cac7f186-a679-48eb-9a19-2c4522f82218" />

The Text widget no longer refers to the whole appState.
Call up the Refactor menu. 
 
<img width="472" height="315" alt="Image" src="https://github.com/user-attachments/assets/acb2e872-2d99-4f5e-a6bb-3803cfc918a0" />

In the Refactor menu, select Extract Widget. Assign a name, such as BigCard, and click Enter.
 
<img width="472" height="190" alt="Image" src="https://github.com/user-attachments/assets/7da945b8-772a-4861-8d55-59544f9eec1f" />

<img width="591" height="81" alt="Image" src="https://github.com/user-attachments/assets/4c2904ed-21d2-4c94-82f9-2deaf80327f7" />

This automatically creates a new class, BigCard, at the end of the current file. The class looks something like the following:
 
<img width="491" height="386" alt="Image" src="https://github.com/user-attachments/assets/b63e5c38-b03d-4999-8e67-460165e0d18b" />

b.	Add a Card
This creates a new parent widget around the Text widget called Padding. 
 
<img width="472" height="455" alt="Image" src="https://github.com/user-attachments/assets/87e94ed7-f0b2-41d3-ae29-d9f13b09f436" />

Place the cursor on the Padding widget, pull up the Refactor menu, and select Wrap with widget.
 
<img width="531" height="246" alt="Image" src="https://github.com/user-attachments/assets/f497a9a3-442e-4737-8de9-c7cde0c95205" />

Type "Card" and press Enter.
 
<img width="472" height="179" alt="Image" src="https://github.com/user-attachments/assets/ef227963-4673-4a55-97e0-e3bd295d5ace" />

This wraps the Padding widget, and therefore also the Text, with a Card widget.
 
<img width="591" height="453" alt="Image" src="https://github.com/user-attachments/assets/e4ac3d17-0627-4eda-8cda-b6bd6d6d5af1" />

The app will now look something like this:
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/1995be9a-e579-427a-9bf1-38dd9ef0ff3e" />

c.	Theme and style
To make the card stand out more, paint it with a richer color. Make the following changes to BigCard's build() method.
 
<img width="591" height="472" alt="Image" src="https://github.com/user-attachments/assets/bed3e8be-08b8-4fcb-a97f-1d4cbdbff4b8" />

The card is now painted with the app's primary color:
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/ad407480-f94a-437d-9524-26f0b06e4e9e" />

We can change the color, and the color scheme of the whole app, by scrolling up to MyApp and changing the seed color for the ColorScheme there.
 
<img width="709" height="480" alt="Image" src="https://github.com/user-attachments/assets/62907d59-767a-466f-8ce1-802d249a6463" />

d.	TextTheme
The card still has a problem: the text is too small and its color is hard to read. To fix this, make the following changes to BigCard's build() method.
 
<img width="768" height="609" alt="Image" src="https://github.com/user-attachments/assets/d648fd89-d7bf-45a2-8155-60c7c70a14bd" />

The app should now look something like the following:
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/1a96f5ff-2439-412f-867c-63303aeee0a3" />

e.	Improve accessibility
Use Text's semanticsLabel property to override the visual content of the text widget with a semantic content that is more appropriate for screen readers:
 
<img width="650" height="621" alt="Image" src="https://github.com/user-attachments/assets/811f8eba-07c0-430e-bd31-f95e5b04a301" />

f.	Center the UI 
Go to MyHomePage's build() method, and make the following change:
 
<img width="650" height="563" alt="Image" src="https://github.com/user-attachments/assets/829e3179-0b3e-4089-b126-cbb8ded9ffbe" />

This centers the children inside the Column along its main (vertical) axis.
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/46975315-03a7-4c6a-8572-ef1adc027373" />

The children are already centered along the column's cross axis (in other words, they are already centered horizontally). But the Column itself isn't centered inside the Scaffold. 

<img width="531" height="338" alt="Image" src="https://github.com/user-attachments/assets/6c3b3367-8e12-4e75-a8b0-ae4f68ea3e0b" />
 
The app should now look something like the following:

<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/0d0c2dc6-063d-488b-93ed-0312ecca81f6" />

With the optional changes, MyHomePage contains this code:
 
<img width="709" height="650" alt="Image" src="https://github.com/user-attachments/assets/d35f2615-33c9-4650-89a2-c5366e3a55dd" />

And the app looks like the following:
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/eab17e08-0d51-4cc1-b113-21f0ab66ef3a" />

4.	Add functionality
The app works, and occasionally even provides interesting word pairs. But whenever the user clicks Next, each word pair disappears forever. It would be better to have a way of "remembering" the best suggestions: such as a ‘Like' button.
 
a.	Add the business logic
Scroll to MyAppState and add the following code:
 
<img width="505" height="603" alt="Image" src="https://github.com/user-attachments/assets/410bb31f-96b9-4bfd-97e5-e6e8873a0775" />

b.	Add the button
First, wrap the existing button in a Row. 
 
<img width="734" height="552" alt="Image" src="https://github.com/user-attachments/assets/335d97ba-7089-4520-b029-48c424a5975c" />
 
<img width="333" height="291" alt="Image" src="https://github.com/user-attachments/assets/fdd5a133-1eca-49cb-9e2e-eb3b260cf6f4" />

This tells Row not to take all available horizontal space.
 
<img width="732" height="509" alt="Image" src="https://github.com/user-attachments/assets/80e12e0c-b84d-4bc9-ba7a-961abe8f9b4d" />

Make the following change:
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/e64ff435-2592-4cdb-b497-660e603d3b47" />

The UI is back to where it was before.
 
<img width="650" height="831" alt="Image" src="https://github.com/user-attachments/assets/d18d4a04-aed4-4e07-959c-880ca17dc424" />

Next, add the Like button and connect it to toggleFavorite(). 
 
<img width="650" height="816" alt="Image" src="https://github.com/user-attachments/assets/97993326-1655-4b0c-bb70-aeadbcb20791" />

The app should look as follows:
 
<img width="738" height="513" alt="Image" src="https://github.com/user-attachments/assets/2ded0032-91ea-483c-8528-f17f67a0ee68" />
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/78fd2793-2114-4372-b32e-f5c9ae8f5df3" />

### 5.	Add navigation rail
Split MyHomePage into 2 separate widgets.
Select all of MyHomePage, delete it, and replace with the following code:
 
<img width="489" height="1392" alt="Image" src="https://github.com/user-attachments/assets/162b40ef-ce67-407f-a206-d1146c2caff7" />

The visual side of the UI is ready—but it doesn't work. Clicking ♥︎ (the heart) in the navigation rail does nothing.
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/7616c84c-1090-4993-81fc-5c2a9b1f4564" />

One way to think about Expanded widgets is that they are "greedy". Try wrapping the SafeArea widget with another Expanded. The resulting layout looks something like this:
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/edacffab-83e9-4454-9b78-398aee91f081" />

a.	Stateless versus stateful widgets
Call up the Refactor menu then, select Convert to StatefulWidget.
 
<img width="678" height="283" alt="Image" src="https://github.com/user-attachments/assets/218b9dd5-dba1-454b-987d-6b9deac28b9e" />
 
b.	setState
The new stateful widget only needs to track one variable: selectedIndex. Make the following 3 changes to _MyHomePageState:
 
<img width="768" height="851" alt="Image" src="https://github.com/user-attachments/assets/1e4e0646-fb6e-468a-924f-0fd42bc9820d" />

c.	Use selectedIndex
Place the following code at the top of _MyHomePageState's build method, just before return Scaffold:
 
<img width="768" height="392" alt="Image" src="https://github.com/user-attachments/assets/f230bc67-1ce6-44aa-8df1-a9293c24da0d" />

Here's _MyHomePageState after that single remaining change:
 
<img width="651" height="1369" alt="Image" src="https://github.com/user-attachments/assets/c2c91c81-441e-40dc-9561-522d67aaa250" />

The app now switches between our GeneratorPage and the placeholder that will soon become the Favorites page.
 
<img width="768" height="534" alt="Image" src="https://github.com/user-attachments/assets/45892714-a2ea-4a61-b668-c0ff57e042be" />

d.	Responsiveness
1.	Inside _MyHomePageState's build method, put your cursor on Scaffold.
2.	Call up the Refactor menu with Ctrl+. (Windows/Linux) or Cmd+. (Mac).
3.	Select Wrap with Builder and press Enter.
 
<img width="531" height="113" alt="Image" src="https://github.com/user-attachments/assets/5884ff4e-fe1c-48ab-818b-6b26cffacfcb" />

4.	Modify the name of the newly added Builder to LayoutBuilder.
5.	Modify the callback parameter list from (context) to (context, constraints).
 
<img width="472" height="67" alt="Image" src="https://github.com/user-attachments/assets/30113e43-c068-4595-a96c-546e45ef4496" />

Make the following single-line change to _MyHomePageState's build method:
 
<img width="738" height="503" alt="Image" src="https://github.com/user-attachments/assets/0efe5960-bc74-439b-82d1-b48394ef0785" />

Now, the app responds to its environment, such as screen size, orientation, and platform! In other words, it's responsive!.
 
<img width="768" height="598" alt="Image" src="https://github.com/user-attachments/assets/ed1b648c-fd44-4cc6-b174-80fc84413eb1" />

<img width="886" height="516" alt="Image" src="https://github.com/user-attachments/assets/f8962f8f-6492-45cd-8afd-b9be54aed754" />

### 6.	Add a new page
Here's the new FavoritesPage class:
 
<img width="726" height="741" alt="Image" src="https://github.com/user-attachments/assets/7cd6fe86-ec44-4b9b-8fd0-b28ce7b8f1d4" />

All that remains now is to replace the Placeholder widget with a FavoritesPage. And voilá!
 
<img width="768" height="619" alt="Image" src="https://github.com/user-attachments/assets/63b949e9-7421-449c-b05b-ab966acb5227" />

<img width="827" height="900" alt="Image" src="https://github.com/user-attachments/assets/ec1749b9-293e-4a3a-b7ad-842bd224298f" />

### 7.	Next steps
Add animated lists, gradients, cross-fades, and more.

<img width="722" height="1377" alt="Image" src="https://github.com/user-attachments/assets/1710bab7-a809-4ad2-a2cc-feb139385acc" />

<img width="768" height="671" alt="Image" src="https://github.com/user-attachments/assets/a4e316e1-8efd-4544-8eb0-656512124987" />

<img width="768" height="671" alt="Image" src="https://github.com/user-attachments/assets/17124e94-f2bc-4349-aaea-58cdcb7b5ea2" />
