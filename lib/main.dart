import 'package:flutter/material.dart';
import 'screens/auth_screen.dart';
import 'screens/home_screen.dart';
import 'screens/symptom_checker_screen.dart';
import 'screens/consultation_screen.dart';
import 'screens/doctor_screen.dart';
import 'screens/admin_screen.dart';
import 'screens/emergency_report_screen.dart';

void main() {
  runApp(HealthcareApp());
}

class HealthcareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Healthcare App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthScreen(),
        '/home': (context) => HomeScreen(userType: ''),
        '/symptom_checker': (context) => SymptomCheckerScreen(),
        '/consultation': (context) => ConsultationScreen(),
        '/doctor': (context) => DoctorScreen(),
        '/admin': (context) => AdminScreen(),
        '/emergency_report': (context) => EmergencyReportScreen(),
      },
    );
  }
}
