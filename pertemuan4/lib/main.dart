import 'package:flutter/material.dart'; 
import 'todo_page_v2.dart'; 
void main() { 
runApp(const MyApp()); 
} 
class MyApp extends StatelessWidget { 
  const MyApp({super.key}); 
 
  @override 
  Widget build(BuildContext context) { 
    return MaterialApp( 
      debugShowCheckedModeBanner: false, 
      title: 'To-Do List Flutter', 
 
      /// Menentukan halaman utama aplikasi 
      home: const TodoPagev2(), 
    ); 
  } 
} 