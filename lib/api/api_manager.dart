import 'dart:convert';
import 'package:http/http.dart' as http ;
import 'package:weatherr_app/api/model/WeatherRes.dart';
class ApiManager{
 static Future<WeatherRes> getWeatherData(String cityName)async{
    String baseUrl = 'api.weatherapi.com';
    String apiKey = '8e2699296de143708ad173859230207';
    var uri =  Uri.http(baseUrl,"v1/forecast.json",
          {
            'key': apiKey,
            'q' : cityName,
            'days' : "3"
          }
      );
    var response = await http.get(uri);
    var jsonString = utf8.decode(response.bodyBytes);
    var weatherResponce = WeatherRes.fromJsonMap(jsonDecode(jsonString));
    return weatherResponce;
  }
}