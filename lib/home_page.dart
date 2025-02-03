import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String username;

  // Constructor untuk menerima data username
  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Navigator.pop(context); // Kembali ke halaman login
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat datang, $username!',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            const Text(
              'Ini adalah halaman beranda.',
              style: TextStyle(fontSize: 16),
            ),
            
          ],
        ),
      ),
    );
  }
}
