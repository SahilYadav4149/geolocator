import 'package:geolocator/geolocator.dart';
class Location{
  double? latitude;
  double? longitude;

  getCurrentLocation()async{
    try {
      final LocationSettings locationSettings = LocationSettings(
        accuracy: LocationAccuracy.high,
        distanceFilter: 100,
      );

      Position position = await Geolocator.getCurrentPosition(locationSettings: locationSettings);
    }catch(e){
      print(e);
    }
  }
}
