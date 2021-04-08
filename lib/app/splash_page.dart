import 'package:flutter/material.dart';
import 'package:musala/services/location.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    LocationData location = LocationData();
    await location.getLocation();
    print(location.placemarks);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
