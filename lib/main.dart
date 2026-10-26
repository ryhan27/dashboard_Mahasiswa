import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Latihan 1: Ubah title Jadi 'Aplikasi Mahasiswa'
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        // Latihan 2: Ganti seedColor menjadi Colors.yellow
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
      darkTheme: ThemeData.dark(useMaterial3: true),
      // Latihan 4: Ubah themeMode menjadi ThemeMode.dark
      themeMode: ThemeMode.dark,
      // Latihan 5: Gunakan ProfilePage sebagai halaman yang dibuka melalui home
      home: const ProfilePage(),
    );
  }
}

// Latihan 5 : Buat class ProfilePage dan gunakan sebagai halaman yang dibuka melalui home.
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.access_alarm),
        actions: const [
          Icon(Icons.accessibility_new),
          Icon(Icons.man_2_outlined),
          Icon(Icons.account_balance_wallet_sharp),
        ],
        // Latihan 3: Ubah judul AppBar menjadi 'Dashboard Mahasiswa'
        title: const Text('Dashboard Mahasiswa'),
        backgroundColor: Colors.grey,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          "Muhamad Rayhan Ramadhansyah",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}