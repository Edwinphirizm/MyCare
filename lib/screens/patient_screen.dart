import 'package:flutter/material.dart';

class PatientScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patient Dashboard'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Active Prescriptions',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // This is a placeholder. Replace with a list of active prescriptions.
              Container(
                color: Colors.grey[200],
                height: 100,
                child: Center(
                  child: Text('No active prescriptions yet.'),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Implement view doctors functionality
                },
                child: Text('View Active Doctors'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement call doctor functionality
                },
                child: Text('Call Nearest Doctor'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement chat with doctor functionality
                },
                child: Text('Chat with Doctor'),
              ),
              ElevatedButton(
                onPressed: () {
                  // Implement view notifications functionality
                },
                child: Text('View Notifications'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
