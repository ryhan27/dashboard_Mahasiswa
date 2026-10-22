import 'package:flutter/material.dart';

void main () {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
     title: 'Aplikasi Kampus',
     debugShowCheckedModeBanner: false,
     theme: ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
     ),
     darkTheme: ThemeData.dark(useMaterial3: true),
     home: const MyHome(),
    );
   
  }
}
class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.access_time_filled_rounded),
          backgroundColor: Colors.green,
          actions: [
            Icon(Icons.search),
            IconButton( onPressed: () {
                print('Halo Bro!');
              },
              icon:Icon(Icons.account_circle_rounded),
            ),
          ],
          title:Center(child: const Text('Dashboard Mahasiswa')),
          ),
        body: const Center(
          child: Text('Rayhan Ramadhansyah'),
        ),
      );
    
  }
}