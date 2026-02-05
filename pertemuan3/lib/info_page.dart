import 'package:flutter/material.dart';

class InfoPage extends StatelessWidget {
  const InfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Informasi Sekolah'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.school, size: 80, color: Colors.orange),
              const SizedBox(height: 16),
              const Text(
                'SMK Negeri 2 Yogyakarta',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Jl. A.M Sangaji No. 47, Kota Yogyakarta',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              const Text(
                'SMK Negeri 2 Yogyakarta adalah sekolah menengah kejuruan yang berfokus pada pengembangan keterampilan vokasional dan profesional. '
                'Sekolah ini menyediakan program belajar yang menggabungkan teori dan praktik, dilengkapi fasilitas laboratorium, bengkel, dan praktik industri. '
                'Visi sekolah adalah berkarakter, unggul, berwawasan lingkungan, berdaya saing global. ',
                textAlign: TextAlign.justify,
                style: TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: const Text('Kembali'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
