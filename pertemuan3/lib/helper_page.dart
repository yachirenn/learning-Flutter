import 'package:flutter/material.dart';

class HelperPage extends StatelessWidget {
  const HelperPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bantuan'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(Icons.help_outline, size: 80, color: Colors.orange),
            const SizedBox(height: 20),
            const Text(
              'Halaman Bantuan',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Kembali'),
            ),
          ],
        ),
      ),
    );
  }
}