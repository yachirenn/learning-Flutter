import 'package:flutter/material.dart'; 
import 'login_page.dart';

void main() { 
runApp(const MyApp()); 
} 
class MyApp extends StatelessWidget { 
const MyApp({super.key}); 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      title: 'Aplikasi Flutter', 
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
        title: const Text('Halaman Utama'), 
        backgroundColor: Colors.blue, 
      ), 
      body: Center( 
        child: Column( 
          mainAxisAlignment: MainAxisAlignment.center, 
          children: [ 
            const Icon(Icons.flutter_dash, size: 100, color: Colors.blue), 
            const SizedBox(height: 20), 
            const Text( 
              'Selamat Datang di Flutter', 
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold), 
            ), 
            const SizedBox(height: 30), 
            ElevatedButton( 
              onPressed: () { 
                Navigator.push( 
                  context, 
                  MaterialPageRoute(builder: (context) => const LoginPage()), 
                ); 
              }, 
              child: const Text('Masuk ke Login'), 
            ), 
          ], 
        ), 
      ), 
    ); 
  } 
}