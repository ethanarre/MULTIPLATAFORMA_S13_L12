import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/ejercicio2.dart';
import 'package:universal_platform/universal_platform.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (UniversalPlatform.isAndroid) {
      debugPrint("Android");
      return materialWidget(context);
    } else if (UniversalPlatform.isWeb) {
      debugPrint("isWeb");
      return cupertinoWidget(context);
    } else {
      return Directionality(
        textDirection: TextDirection.ltr, 
        child: MaterialApp(
          home: HomeScreen(),
        ),
      );
    }
  }
  


  Widget materialWidget(BuildContext context) {
    return MaterialApp(
      home: Scaffold( // Agregado Scaffold
        appBar: AppBar(
          title: Text('Material App'),
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                  ),
                ),
                SizedBox(height: 32),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                    textStyle: TextStyle(fontSize: 18),
                    foregroundColor: Colors.white
                  ),
                  child: Text('Login'),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot password?'),
                ),
                SizedBox(height: 32),
                TextButton(
                  onPressed: () {},
                  child: Text('Sign up here'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }




  Widget cupertinoWidget(BuildContext context) {
    return Directionality( 
      textDirection: TextDirection.ltr,
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('SIMPLE'),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  // Logo
                  SizedBox(
                    height: 100,
                    child: Image.asset('assets/images/logo.png'), // Replace with your actual logo
                  ),
                  SizedBox(height: 20),
                  // Username field
                  CupertinoTextField(
                    placeholder: 'Username',
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 16),
                  // Passphrase field
                  CupertinoTextField(
                    placeholder: 'Passphrase',
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    obscureText: true,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                    ),
                  ),
                  SizedBox(height: 20),
                  // Sign In button
                  CupertinoButton.filled(
                    child: Text('Sign In', style: TextStyle(fontSize: 18)),
                    onPressed: () {
                      // Handle Sign In logic
                    },
                    borderRadius: BorderRadius.circular(10),
                  ),
                  SizedBox(height: 16),
                  // Reset passphrase link
                  CupertinoButton(
                    child: Text('Reset your passphrase?', style: TextStyle(fontSize: 14)),
                    onPressed: () {
                      // Handle reset passphrase logic
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
