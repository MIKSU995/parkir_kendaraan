import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import 'widgets/app_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Profile Card',
      theme: AppTheme.lightTheme,
      home: const ProfileScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double cardPadding = 17.0;
    const double cardRadius = 9.0;
    const double buttonHeight = 41.0;
    const double buttonRadius = 5.0;
    const double avatarSize = 42.0;
    const double spacingNameNim = 9.0;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(cardRadius),
              ),
              child: Padding(
                padding: const EdgeInsets.all(cardPadding),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    CircleAvatar(
                      radius: avatarSize / 2, // 21 px
                      backgroundImage: AssetImage('assets/profile.jpeg'),
                    ),
                    SizedBox(height: 12.0),
                    Text('Fahmi Hartanto'),
                    SizedBox(height: spacingNameNim),
                    Text('20240801121'),
                    SizedBox(height: 8.0),
                    Text('Teknik Informatika'),
                    SizedBox(height: 12.0),
                    Text(
                      'SAYA ADALAH SEORANG JUNIOR DEVELOPER, SEKETERASI JENDRAL LDK IKMI, BENDAHARA KARANG TARUNA, DAN SAYA SUKA MEMBRAINSTORMING DIRI SAYA UNTUK MENINGKATKAN KREATIVITAS SAYA, LALU DI LDK IKMI SAYA SUDAH MENJALANKAN PROGRAM PROGRAM BESAR SEPERTI HARI BESAR TABLIGH AKBAR, PROGRAM RAMADHAN DAN LAIN LAINYA.',
                    ),
                    SizedBox(height: 16.0),
                    AppButton(
                      label: 'Kunjungi GitHub Saya',
                      icon: Icons.code,
                      url: 'https://github.com/MIKSU995',
                      height: buttonHeight,
                      borderRadius: buttonRadius,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}