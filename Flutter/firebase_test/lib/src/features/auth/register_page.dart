import 'package:firebase_test/src/core/services/firebase_service.dart';
import 'package:firebase_test/src/features/auth/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passController;
  final FirebaseService _firebaseService = FirebaseService();
  @override
  void initState() {
    _emailController = TextEditingController();
    _passController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Enter Your Email',
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              TextField(
                controller: _passController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                  hintText: 'Enter Your Password',
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              ElevatedButton(
                  onPressed: () async {
                    try {
                      await _firebaseService.createUserWithEmailAndPassword(
                          emailAddress: _emailController.text,
                          password: _passController.text);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('User registered Succesfully')),
                      );
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => LoginPage()));
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Registration failed')),
                      );
                    }
                  },
                  child: Text('Register')),
            ],
          ),
        ),
      ),
    );
  }
}
