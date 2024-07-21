import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'admin_screen.dart';
import 'emergency_report_screen.dart';

class AuthScreen extends StatefulWidget {
  @override
  _AuthScreenState createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final _idController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login(BuildContext context, String userType) {
    if (userType == 'Admin') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AdminScreen()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomeScreen(userType: userType)),
      );
    }
  }

  void _reportEmergency(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => EmergencyReportScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _idController,
              decoration: InputDecoration(labelText: 'ID'),
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _login(context, 'Doctor'),
              child: Text('Login as Doctor'),
            ),
            ElevatedButton(
              onPressed: () => _login(context, 'Patient'),
              child: Text('Login as Patient'),
            ),
            ElevatedButton(
              onPressed: () => _login(context, 'Admin'),
              child: Text('Login as Admin'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _reportEmergency(context),
              child: Text('Report Emergency'),
            ),
          ],
        ),
      ),
    );
  }
}
