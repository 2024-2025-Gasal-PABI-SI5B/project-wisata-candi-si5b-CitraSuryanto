import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninScreen extends StatefulWidget{
  SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  //TODO : 1. Deklarasikan Variabel
  final TextEditingController _usernameController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  String _errorText = '';

  bool _isSignIn = false;

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //TODO : 2. Pasang Appbar
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      //TODO : 3. Pasang Body
      body: Center(
        child: Padding(padding: const EdgeInsets.all(16.0),
        child : Form(
          child: Column(
            //TODO : 4. Atur mainAxisAlignment dan crossAxisAlignment
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //TODO : 5. Buat TextFormField untuk Nama Pengguna
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Nama Pengguna',
                hintText: 'Masukkan Nama Pengguna',
                border: OutlineInputBorder(),
              ),
            ),
              //TODO : 6. Buat TextFormField untuk Kata Sandi
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  hintText: 'Masukkan Kata Sandi',
                  border: const OutlineInputBorder(),
                  errorText: _errorText.isNotEmpty ? _errorText : null,
                  suffixIcon: IconButton(onPressed: (){
                    setState(() {
                      _obscurePassword = !_obscurePassword;
                    });
                  },
                   icon: Icon(
                    _obscurePassword ? Icons.visibility : Icons.visibility_off,
                   ),
                  ),
                ),
                obscureText: _obscurePassword,
              ),
              //TODO : 7. Buat TextFormField untuk Sign In
              const SizedBox(height : 20,),
              ElevatedButton(onPressed: (){}, 
              child: const Text('Sign In'),
              ),
              //TODO : 8. Pasang TextButton Sign Up
              const SizedBox(height: 10,),
              // TextButton(
              //   onPressed: (){}, 
              //   child: Text('Belum punya akun? Daftar di sini.'),
              //   ),
              RichText(text: TextSpan(
                text: 'Belum punya akun?',
                style: const TextStyle(fontSize: 16, color: Colors.deepPurple),
                children: [
                  TextSpan(
                    text: 'Daftar di sini.',
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.deepPurple,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                    ..onTap = (){},
                  ),
                ],
              ),
              ),
            ],
          )),
      ),
    ));
  }
}