import 'package:flutter/material.dart';
import 'package:projet_logine_page/page_2.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LOGIN PAGE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(),
  );
  }
}
class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  @override
  Widget build(BuildContext context) {
 
    return Scaffold(
      appBar: AppBar(
   
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
     
        title: Text('LOGIN PAGE'),
      ),
      body:  Padding(
        padding: EdgeInsets.all(20.0),
      
        child: Column(
        
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () async{
                
                String email = emailController.text;
                String password = passwordController.text;
                print('Email: $email, Password: $password');
                
                 SharedPreferences prefs = await SharedPreferences.getInstance();
                 await prefs.setString('email', email);
                 await prefs.setString('password', password);
 
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LandingPage()),
                );
              },
              child: Text('Login'),
            ), 
          ],
        ),
      ),
    );
  }
}