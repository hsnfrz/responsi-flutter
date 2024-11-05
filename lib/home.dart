import 'package:flutter/material.dart';
import 'package:flutter_responsi_app/akun.dart';
import 'package:flutter_responsi_app/login.dart';
import 'button_nav.dart'; // Import bottom_navbar.dart untuk navigasi

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Fungsi untuk mengubah tampilan berdasarkan index yang dipilih
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // Menampilkan tampilan yang berbeda berdasarkan index yang dipilih
  Widget _buildPageContent() {
    switch (_selectedIndex) {
      case 0:
        return HomeFragment(); // Halaman Home
      case 1:
        return AkunPage(); // Halaman Akun
      case 2:
        return LoginPage(); // Halaman Logout
      default:
        return HomeFragment();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.account_circle, color: Colors.black),
            Text(
              'Guest',
              style: TextStyle(color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                IconButton(icon: Icon(Icons.notifications, color: Colors.black), onPressed: () {}),
                IconButton(icon: Icon(Icons.settings, color: Colors.black), onPressed: () {}),
              ],
            ),
          ],
        ),
      ),
      body: _buildPageContent(), // Menampilkan fragment sesuai _selectedIndex
      bottomNavigationBar: BottomNavbar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}

// Fragment untuk halaman Home dengan desain grid dan list view
class HomeFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Widget Grid View
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Widget Grid View',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 150, // Tentukan tinggi sesuai kebutuhan
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.image, size: 50, color: Colors.grey),
                        SizedBox(height: 10),
                        Text('Artist', style: TextStyle(fontWeight: FontWeight.bold)),
                        Text('Song', style: TextStyle(color: Colors.grey)),
                      ],
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),

            // Widget List View
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Widget List View',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
            SizedBox(height: 10),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.image, size: 50, color: Colors.grey),
                    title: Text('Headline', style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Description duis aute irure dolor in reprehenderit in volup...'),
                        Row(
                          children: [
                            Icon(Icons.today, size: 16),
                            SizedBox(width: 5),
                            Text('Today • 23 min'),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(Icons.arrow_forward),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Dummy fragment untuk halaman Akun
class AccountFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Account Page"),
    );
  }
}

// Dummy fragment untuk halaman Logout
class LogoutFragment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Logout Page"),
    );
  }
}
