import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'login.dart'; // Import file LoginPage

Future<void> main() async {
  // Inisialisasi Supabase
  await Supabase.initialize(
    url: 'https://jljdkbphkcffxmkhcoob.supabase.co', // Ganti dengan URL Supabase Anda
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpsamRrYnBoa2NmZnhta2hjb29iIiwicm9sZSI6ImFub24iLCJpYXQiOjE3Mzc1MjExNDQsImV4cCI6MjA1MzA5NzE0NH0.WRGofLXtdfq_wry6dypO3gOAe_SMdOZM5hH5Ma0AYds',
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Supabase App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(), // Halaman awal aplikasi
    );
  }
}
