import 'package:flutter/material.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart';

class EmergencyReportScreen extends StatefulWidget {
  @override
  _EmergencyReportScreenState createState() => _EmergencyReportScreenState();
}

class _EmergencyReportScreenState extends State<EmergencyReportScreen> {
  final _messageController = TextEditingController();
  LocationData? _currentLocation;
  final Location _locationService = Location();
  bool _isRecording = false;
  String _recordingPath = '';

  @override
  void initState() {
    super.initState();
    _initLocationService();
  }

  Future<void> _initLocationService() async {
    try {
      final LocationData location = await _locationService.getLocation();
      setState(() {
        _currentLocation = location;
      });
    } on PlatformException catch (e) {
      if (e.code == 'PERMISSION_DENIED') {
        // Handle permission denial
      } else if (e.code == 'SERVICE_STATUS_ERROR') {
        // Handle service error
      }
      _currentLocation = null;
    }
  }

  void _recordVoiceNote() {
    // Implement voice recording functionality
    setState(() {
      _isRecording = !_isRecording;
      if (_isRecording) {
        // Start recording
      } else {
        // Stop recording
        _recordingPath = 'path/to/recording';
      }
    });
  }

  void _sendEmergencyReport() {
    // Implement sending of emergency report with location and voice note
    if (_currentLocation != null && _recordingPath.isNotEmpty) {
      // Send emergency report
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Emergency Report Sent'),
          content: Text('Your emergency report has been sent.'),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Report Emergency'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: _messageController,
              decoration: InputDecoration(labelText: 'Message'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _recordVoiceNote,
              child:
                  Text(_isRecording ? 'Stop Recording' : 'Record Voice Note'),
            ),
            ElevatedButton(
              onPressed: () {
                // Implement capture or add picture or video functionality
              },
              child: Text('Capture or Add Picture/Video'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _sendEmergencyReport,
              child: Text('Send Emergency Report'),
            ),
          ],
        ),
      ),
    );
  }
}
