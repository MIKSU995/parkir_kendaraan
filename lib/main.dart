import 'package:flutter/material.dart';
import 'theme/app_theme.dart'; // Impor file tema
import 'widgets/app_buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Praktikum 4',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme, // Menggunakan tema dari AppTheme
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Utama'),
      ),
      body: Center(
        child: CustomButton(
          text: 'Tekan Di Sini',
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Tombol dari widget berhasil ditekan!'),
              ),
            );
          },
        ),
      ),
    );
  }
}