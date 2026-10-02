import 'package:flutter/material.dart';
import 'profile_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Diperbaiki
        useMaterial3: true,
      ),
      home: const HomePage(), // Diperbaiki: home diaktifkan
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState(); // Diperbaiki: 'State' pakai huruf besar
}

class _HomePageState extends State<HomePage> { // Diperbaiki: 'State' pakai huruf besar
  int currentIndex = 0;

  final List<Widget> pages = const [
    HomeContent(),
    Center(child: Text("Halaman Settings")), // Ditambahkan agar tidak crash saat pindah tab
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold( // Diperbaiki: Scaffold menggunakan tanda kurung ( )
      appBar: AppBar(
        title: const Text("Fahmi Hartanto"),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar( // Diperbaiki: bottomNavigationBar
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    ); // Diperbaiki: ditutup dengan );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16), // Diperbaiki: EdgeInsets bukan EdgeInserts
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // Diperbaiki: crossAxisAlignment
        children: [
          Container(
            width: 200,
            height: 30,
            color: Colors.grey, // Diperbaiki: grey huruf kecil
          ),
          
          const SizedBox(height: 16), // Diperbaiki: Gunakan SizedBox untuk memberi jarak
          
          Container(
            width: 400,
            height: 30,
            color: Colors.grey, // Diperbaiki: grey huruf kecil
          ),
          
          const SizedBox(height: 16), // Diperbaiki: Gunakan SizedBox
          
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 20,
                  color: Colors.red, // Diperbaiki: red huruf kecil
                ),
              ),
            ],
          )
        ],
      ),
    ); // Diperbaiki: ditambah titik koma ;
  }
}