import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  // 1. Parameter Wajib
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
    // Perhitungan Rumus NIM (Contoh NIM: 20230801047)
    // Digit ke-2 dari belakang = 4
    // Digit terakhir = 7
    const double lebarKartu = 320.0 + (4 * 5); // = 340.0
    const double sudutMelengkung = 12.0 + (7 * 1.5); // = 22.5
    const double ukuranLogo = 60.0 + (7 * 2); // = 74.0
    const double jarakPemisah = 15.0 + 7; // = 22.0

    // 2. Struktur Widget Tree Utama (Root Kartu)
    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sudutMelengkung),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Kartu (Horizontal - Row)
          Row(
            children: [
              // Sisi Kiri: FlutterLogo dalam Container Bingkai Lingkaran/Lengkung
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(12.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: const FlutterLogo(size: ukuranLogo),
              ),

              // Jarak Pemisah Horizontal
              const SizedBox(width: jarakPemisah),

              // Sisi Kanan: Column Teks Judul & Nama
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Kartu Praktikum ",
                      style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      nama,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 16.0),

          // Pemisah
          const Divider(thickness: 1.5),

          const SizedBox(height: 16.0),

          // Detail Identitas (Vertikal - Column)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "NIM: $nim",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                "Hobi: $hobi",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                "Skor Aktivitas: $skorAktivitas",
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}