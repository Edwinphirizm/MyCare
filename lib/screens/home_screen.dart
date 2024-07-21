import 'package:flutter/material.dart';
import 'doctor_screen.dart';
import 'patient_screen.dart';

class HomeScreen extends StatelessWidget {
  final String userType;

  HomeScreen({required this.userType});

  @override
  Widget build(BuildContext context) {
    return userType == 'Doctor'
        ? DoctorScreen()
        : userType == 'Patient'
            ? PatientScreen()
            : Scaffold(
                appBar: AppBar(
                  title: Text('Home'),
                ),
                body: Center(
                  child: Text('Invalid user type'),
                ),
              );
  }
}
