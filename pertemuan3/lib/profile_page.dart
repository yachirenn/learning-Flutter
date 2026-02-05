import 'package:flutter/material.dart'; 
 
class ProfilePage extends StatelessWidget { 
  const ProfilePage({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return Scaffold( 
      appBar: AppBar( 
        title: const Text('Profil'), 
        backgroundColor: Colors.green, 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            const Icon(Icons.person, size: 100, color: Colors.green), 
            const SizedBox(height: 20), 
            const Text( 
              'Nama Siswa', 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
            ), 
            const Text('Kelas XII SIJA', style: TextStyle(fontSize: 16)), 
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
    ); 
  } 
} 