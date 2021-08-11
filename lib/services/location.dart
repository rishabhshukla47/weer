import 'package:location/location.dart';

class CurrentLocation {
  double latitude;
  double longitude;

  Future<dynamic> enableService(nowLocation, _serviceEnabled) async {
    try {
      _serviceEnabled = await nowLocation.serviceEnabled();
      if (!_serviceEnabled) {
        _serviceEnabled = await nowLocation.requestService();
      }
      if (_serviceEnabled) {
        return _serviceEnabled;
      } else {
        enableService(nowLocation, _serviceEnabled);
      }
    } catch (err) {
      print(err);
      _serviceEnabled = false;
      enableService(nowLocation, _serviceEnabled);
    }
  }

  Future<dynamic> getCurrentLocation() async {
    try {
      Location nowLocation = new Location();
      bool _serviceEnabled;
      PermissionStatus _permissionStatus;
      LocationData _locationData;

      _permissionStatus = await nowLocation.hasPermission();
      print(_permissionStatus);
      if (_permissionStatus == PermissionStatus.denied) {
        _permissionStatus = await nowLocation.requestPermission();
        if (_permissionStatus != PermissionStatus.granted) {
          return 1;
        } else {
          _serviceEnabled = await enableService(nowLocation, _serviceEnabled);
        }
      } else if (_permissionStatus == PermissionStatus.granted ||
          _permissionStatus == PermissionStatus.grantedLimited) {
        _serviceEnabled = await enableService(nowLocation, _serviceEnabled);
      }

      _locationData = await nowLocation.getLocation();

      print(_locationData);

      latitude = _locationData.latitude;
      longitude = _locationData.longitude;
      return 1;
    } catch (e) {
      getCurrentLocation();
    }
  }
}
