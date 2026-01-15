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
    // Variabel untuk Praktik Operator
    int a = 10;
    int b = 5;

    // Operator logika (hasilnya disimpan dalam variable boolean)
    bool HasilLogika = (a>b&&b<10);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Operator On Dart"
            ),
          backgroundColor: Colors.blueAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Aritmatika Section
              Text(
                "1. Operator Aritmatika",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              const Divider(), //Garis Pemisah
              Text("Kurang (10 - 5) : ${a - b}"),
              Text("Kali   (10 * 5) : ${a * b}"),
              Text("Bagi   (10 / 5) : ${a / b}"),

              const SizedBox(height: 25),

              // 2. Seksi Perbandingan
              Text(
                "2. Operator Perbandingan",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(),
              Text("Apakah $a > $b ? : ${a > b}"),
              Text("Apakah $a == $b ? : ${a == b}"),

              const SizedBox(height: 25),

              // 3. Seksi Logika
              Text(
                "3. Operator Logika",
                style: GoogleFonts.poppins(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const Divider(),
              Text("Hasil (a > 5 && b < 10) : $HasilLogika"),
            ],
          ),
        ),
      ),
    );
  }
}
