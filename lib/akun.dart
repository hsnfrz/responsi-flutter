import 'package:flutter/material.dart';
import 'package:flutter_responsi_app/kelola_akun.dart';

class AkunPage extends StatefulWidget {
  @override
  _AkunPageState createState() => _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
    
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Profil pengguna
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  // Icon profil
                  Icon(Icons.account_circle, size: 80, color: Colors.grey),
                  SizedBox(height: 10),
                  // Nama lengkap dan asal universitas
                  Text(
                    'Hasna Nur Fairuz Nafis',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '5210411303',
                    style: TextStyle(color: Colors.grey),
                  ),
                  Text(
                    'Universitas Teknologi Yogyakarta',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            // Daftar menu pengaturan
            Expanded(
              child: ListView(
                children: [
                  ListTile(
                    title: Text('Kelola Akun'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>KelolaAkunPage()),
                      );
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    title: Text('Notifikasi'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Aksi untuk membuka halaman Notifikasi
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    title: Text('Privacy Policy'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Aksi untuk membuka halaman Privacy Policy
                    },
                  ),
                  Divider(height: 1),
                  ListTile(
                    title: Text('Terms of Service'),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () {
                      // Aksi untuk membuka halaman Terms of Service
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
