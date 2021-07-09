import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class departmentText extends StatefulWidget {
  @override
  _departmentTextState createState() => _departmentTextState();
}

class _departmentTextState extends State<departmentText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Відділення',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: GoogleMap(
        initialCameraPosition:
            CameraPosition(target: LatLng(50.45038872142583, 30.522588095963595), zoom: 5),
      ),
    );
  }
}
