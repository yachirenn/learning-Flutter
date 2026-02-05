import 'package:flutter/material.dart'; 
import 'profile_page.dart'; 
import 'info_page.dart'; 
 
class HomePage extends StatelessWidget { 
  const HomePage({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar(title: const Text('Home'), backgroundColor: Colors.blue), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            const Icon(Icons.school, size: 100, color: Colors.blue), 
            const SizedBox(height: 20), 
            const Text( 
              'Aplikasi Sekolah', 
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold), 
            ), 
            const SizedBox(height: 30), 
 
            ElevatedButton( 
              onPressed: () { 
                Navigator.push( 
                  context, 
                  MaterialPageRoute(builder: (context) => const ProfilePage()), 
                ); 
              }, 
              child: const Text('Halaman Profil'), 
            ), 
 
            const SizedBox(height: 10), 
 
            ElevatedButton( 
              onPressed: () { 
                Navigator.push( 
                  context, 
                  MaterialPageRoute(builder: (context) => const InfoPage()), 
                ); 
              }, 
              child: const Text('Halaman Informasi'), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
} 