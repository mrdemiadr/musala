import 'package:flutter/material.dart';
import 'package:musala/app/home_page.dart';
import 'package:musala/services/location.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  LocationData location;
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    location = LocationData();
    await location.getLocation();
    await location.getPlacemark();
    // print(location.position);
    // print(location.position);
    // if(location != null){

    print(location.position.latitude);
    print(location.placemarks);
  }

  @override
  Widget build(BuildContext context) {
    return location.position.latitude != null
        ? HomePage(location: location.position.latitude)
        : CircularProgressIndicator();
  }
}
