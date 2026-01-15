import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // deklarasikan variable di dalam method build
    String nama = "Rendy Sulistyawan";
    int umur = 18;
    double nilai = 45.5;
    bool isLulus = nilai >= 76;

    return MaterialApp(
      debugShowCheckedModeBanner:
          false, // ini menghilangkan tabel "debug" di pojok
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'STUDENT PROFILE',
            style: GoogleFonts.poppins(
              color: Color.fromARGB(255, 0, 245, 160),
              fontWeight: FontWeight.w700,
              letterSpacing: 3,
            ),
          ),
          backgroundColor: const Color.fromRGBO(40, 45, 50, 1),
        ),
        body: Stack(
          children: [
            // BACKGROUND (logo kecil + transparan)
            Center(
              child: Opacity(
                opacity: 0.10, // transparansi logo
                child: Image.asset(
                  'assets/images/logo-smk.png',
                  width: 1180, // ukuran logo
                  height: 1180,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // OVERLAY + CONTENT (INI ASLI PUNYA LU)
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Nama Siswa: $nama",
                    style: GoogleFonts.poppins(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Umur: $umur Tahun",
                    style: GoogleFonts.poppins(fontSize: 22),
                  ),
                  const SizedBox(height: 10),
                  Text("Nilai: $nilai", style: GoogleFonts.poppins(fontSize: 22)),
                  const SizedBox(height: 10),
                  Text(
                    // ignore: dead_code
                    "Status kelulusan: ${isLulus ? 'LULUS' : 'DURUNG LULUS'}",
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      color: isLulus
                          ? Colors.green.shade600
                          // ignore: dead_code
                          : Colors.red.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
