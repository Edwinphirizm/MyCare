import 'package:flutter/material.dart';

class DoctorScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doctor Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Consultation Appointments',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // This is a placeholder. Replace with a list of appointments.
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Center(
                  child: Text('No appointments scheduled.'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Patient Medical Progress',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // This is a placeholder. Replace with medical progress details.
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Center(
                  child: Text('No medical progress to display.'),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Patient History',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // This is a placeholder. Replace with patient history details.
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Center(
                  child: Text('No patient history to display.'),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement view sick patients functionality
                },
                child: Text('View Sick Patients'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
