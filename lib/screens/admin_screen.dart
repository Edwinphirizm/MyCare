import 'package:flutter/material.dart';

class AdminScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Emergency Reports',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // This is a placeholder. Replace with a list of emergency reports.
            Container(
              color: Colors.grey[200],
              height: 100,
              child: Center(
                child: Text('No emergency reports yet.'),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'New Report Alerts',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            // This is a placeholder. Replace with a list of new report alerts.
            Container(
              color: Colors.grey[200],
              height: 100,
              child: Center(
                child: Text('No new reports in your city.'),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement response to emergency functionality
              },
              child: Text('Respond to Emergency'),
            ),
          ],
        ),
      ),
    );
  }
}
