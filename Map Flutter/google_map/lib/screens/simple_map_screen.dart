// ignore: implementation_imports
// ignore_for_file: prefer_const_constructors

import 'dart:async';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
class SimpleMapScreen extends StatefulWidget {
  const SimpleMapScreen({Key? key}) : super(key: key);

  @override
  State<SimpleMapScreen> createState() => _SimpleMapScreenState();
}

class _SimpleMapScreenState extends State<SimpleMapScreen> {

  final Completer<GoogleMapController> _controller= Completer();

  static const CameraPosition initialPosition = CameraPosition(target: LatLng(22.379668679720048,91.8207389502678),zoom: 14.0);

  static const CameraPosition targetPosition = CameraPosition(target: LatLng(22.501685105572733,91.80798391108782),zoom: 14.0, bearing: 192.0,tilt: 60);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Simple Google map"), centerTitle: true,),
      body: GoogleMap(initialCameraPosition: initialPosition, mapType: MapType.normal, onMapCreated: (GoogleMapController comtroller){
        _controller.complete(comtroller);

      },),
      floatingActionButton: FloatingActionButton.extended(
        onPressed:  (){}, 
        label:  Text('To the lake'), 
        icon: Icon(Icons.directions_boat
        ),
      ),
    );
  }

  Future<void> goToLake() async{
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(targetPosition));

  }


}