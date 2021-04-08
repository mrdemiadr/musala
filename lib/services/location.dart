import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

abstract class LocationBaseData {
  Future<Position> getLocation();
  Future<List<Placemark>> getPlacemark();
}

class LocationData implements LocationBaseData {
  Position position;
  // double latitude;
  // double longitude;
  List<Placemark> placemarks;

  @override
  Future<Position> getLocation() async {
    position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.medium)
        .catchError((e) {
      print(e);
    });
    return position;
    /*   latitude = position.latitude;
      longitude = position.longitude;
      placemarks = await placemarkFromCoordinates(latitude, longitude); */
  }

  @override
  Future<List<Placemark>> getPlacemark() async {
    placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    return placemarks;
  }
}
