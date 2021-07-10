import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class contactsMap extends StatefulWidget {
  @override
  _contactsMapState createState() => _contactsMapState();
}

class _contactsMapState extends State<contactsMap> {
  List<Marker> myMarker = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Головний офіс "Автолюкс"',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: GoogleMap(
        initialCameraPosition:
        CameraPosition(target: LatLng(49.87109136147222, 24.002270624941143), zoom: 17),
      ),
    );
  }
}
