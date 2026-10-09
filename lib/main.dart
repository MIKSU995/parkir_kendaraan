import 'package0/flutter/material.dart';
import 'theme/app_theme.dart';
import 'widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
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
        title: const Text('Design System Demo'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Universitas Esa Unggul',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              'Tekan tombol di bawah untuk melihat lokasi kampus.',
            ),
            const SizedBox(height: 24),

            // Link Maps menggunakan titik koordinat presisi Universitas Esa Unggul
            AppButton(
              label: 'Buka Lokasi Kampus',
              icon: Icons.location_on,
              url: 'https://www.google.com/maps/search/?api=1&query=-6.190691,106.782079',
            ),

            const SizedBox(height: 16),

            AppButton(
              label: 'Tampilkan Notifikasi',
              icon: Icons.notifications,
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Tombol aksi berhasil ditekan!'),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}