import 'package:flutter/material.dart';

class ConsultationScreen extends StatefulWidget {
  @override
  _ConsultationScreenState createState() => _ConsultationScreenState();
}

class _ConsultationScreenState extends State<ConsultationScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _issueController = TextEditingController();

  void _requestConsultation() {
    String name = _nameController.text;
    String issue = _issueController.text;
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Consultation Requested'),
        content: Text('Consultation requested for $name regarding $issue'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text('OK'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Virtual Consultation'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                hintText: 'Your Name',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _issueController,
              decoration: InputDecoration(
                hintText: 'Health Issue',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _requestConsultation,
              child: Text('Request Consultation'),
            ),
          ],
        ),
      ),
    );
  }
}
