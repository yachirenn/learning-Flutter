import 'package:flutter/material.dart'; 

class InfoPage extends StatelessWidget { 
  const InfoPage({super.key});

  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Informasi'), 
        backgroundColor: Colors.orange, 
      ), 
      body: Center( 
        child: Padding( 
          padding: const EdgeInsets.all(16.0), 
          child: Column( 
            mainAxisAlignment: MainAxisAlignment.center, 
            children: [ 
              const Icon(Icons.info, size: 100, color: Colors.orange), 
              const SizedBox(height: 20), 
              const Text( 
                'Informasi Sekolah', 
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
              ), 
              const SizedBox(height: 10), 
              const Text( 
                'Aplikasi ini dibuat menggunakan Flutter sebagai latihan navigasi dan UI.', 
                textAlign: TextAlign.center, 
              ), 
              const SizedBox(height: 30), 
              ElevatedButton( 
                onPressed: () { 
                  Navigator.pop(context); 
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