import 'package:clima_flutter/services/location.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
    print('get triggered');
  }

  void getData () async {
    Future<http.Response> response = http.get('https://samples.openweathermap.org/data/2.5/weather?lat=35&lon=139&appid=b6907d289e10d714a6e88b30761fae22');
    print(response);
  }

  void getLocation() async{
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longtitude);
  }

  @override
  Widget build(BuildContext context) {
    getData();
    return Scaffold();
  }
}
