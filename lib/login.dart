import 'package:flutter/material.dart';
import 'package:flutter_responsi_app/password.dart';
import 'package:flutter_responsi_app/signup.dart';
import 'package:flutter_responsi_app/home.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/logo_responsi.png',
                  height: 100,),
                  SizedBox(height: 16),

                // Teks "Masuk"
                Text(
                  'Masuk',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),

                // Input Email
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    hintText: 'Masukkan Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Input Password
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    hintText: 'Masukkan Password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                // Teks "Belum punya akun?" dan "Lupa password?"
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>SignupPage()),
                      );
                      },
                      child: Text('Belum punya akun ? Daftar'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>PasswordPage()),
                      );
                      },
                      child: Text('Lupa password ?'),
                    ),
                  ],
                ),
                SizedBox(height: 20),

                // Tombol Masuk
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context)=>HomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
