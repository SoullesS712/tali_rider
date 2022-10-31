import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tali_rider/home.dart';
import 'location_service.dart';
import 'model/location_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamProvider<LocationModel>(
      initialData: const LocationModel(latitude: 0, longitude: 0),
      create: (context) => LocationService().getStreamData,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}
