import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'loaction.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }
  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.longitude);
    print(location.latitude);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
