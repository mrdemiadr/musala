import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

abstract class LocationBaseData {
  void getLocation();
}

class LocationData implements LocationBaseData {
  double latitude;
  double longitude;
  List<Placemark> placemarks;

  @override
  Future<void> getLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
              desiredAccuracy: LocationAccuracy.medium)
          .catchError((e) {
        print(e);
      });
      latitude = position.latitude;
      longitude = position.longitude;
      placemarks = await placemarkFromCoordinates(latitude, longitude);
    } catch (e) {
      print(e);
    }
  }
}
