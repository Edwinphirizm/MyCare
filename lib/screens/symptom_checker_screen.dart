import 'package:flutter/material.dart';

class SymptomCheckerScreen extends StatefulWidget {
  @override
  _SymptomCheckerScreenState createState() => _SymptomCheckerScreenState();
}

class _SymptomCheckerScreenState extends State<SymptomCheckerScreen> {
  final TextEditingController _controller = TextEditingController();
  String _result = '';

  void _checkSymptoms() {
    String symptoms = _controller.text.toLowerCase();
    if (symptoms.contains('fever')) {
      setState(() {
        _result = 'Possible flu or COVID-19. Please consult a doctor.';
      });
    } else {
      setState(() {
        _result = 'Symptom not recognized. Please consult a doctor.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptom Checker'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Enter your symptoms',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _checkSymptoms,
              child: Text('Check Symptoms'),
            ),
            SizedBox(height: 20),
            Text(
              _result,
              style: TextStyle(fontSize: 18, color: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}
