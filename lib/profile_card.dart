import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  // 1. Konstruktor & Properti Wajib
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    // 2. Struktur Widget Tree
    return Container(
      // Lebar Kartu = 320 + (4 * 5) = 340.0
      width: 340.0, 
      padding: const EdgeInsets.all(20.0), // Padding internal kartu
      decoration: BoxDecoration(
        color: Colors.white,
        // Sudut Melengkung = 12 + (7 * 1.5) = 22.5
        borderRadius: BorderRadius.circular(22.5), 
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2), // Hitam transparan
            blurRadius: 10.0,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // Header Kartu (Horizontal)
          Row(
            children: [
              // Sisi Kiri: Logo dibungkus Container berbingkai
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Colors.grey[200], // Opsional agar bentuk lingkaran terlihat
                ),
                padding: const EdgeInsets.all(8.0),
                // Ukuran Logo = 60 + (7 * 2) = 74.0
                child: const FlutterLogo(size: 74.0), 
              ),
              
              // Jarak Pemisah = 15 + 7 = 22.0
              const SizedBox(width: 22.0), 
              
              // Sisi Kanan: Teks
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Kartu Praktikan",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  Text(
                    nama,
                    style: const TextStyle(
                      fontSize: 18, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
          
          const SizedBox(height: 15.0),
          
          // Pemisah
          const Divider(thickness: 1.5),
          
          const SizedBox(height: 15.0),
          
          // Bagian Detail Identitas (Vertikal)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
            children: [
              Text(
                "NIM: $nim",
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                "Hobi: $hobi",
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
              const SizedBox(height: 5),
              Text(
                "Skor Aktivitas: $skorAktivitas",
                style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }
}