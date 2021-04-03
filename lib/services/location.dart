import 'package:geolocator/geolocator.dart';

abstract class LocationBaseData {
  void getLocation();
}

class LocationData implements LocationBaseData {
  @override
  void getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.medium)
        .catchError((e) {
      print(e);
    });
    print(position);
  }
}
