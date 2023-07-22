import 'package:weatherr_app/api/model/location.dart';
import 'package:weatherr_app/api/model/current.dart';
import 'package:weatherr_app/api/model/forecast.dart';
import 'package:weatherr_app/api/model/error.dart';

class WeatherRes {

  Location location;
  Current current;
  Forecast forecast;
	//Error? error;

	//WeatherRes({this.location, this.current, this.forecast, this.error});

	WeatherRes.fromJsonMap(Map<String, dynamic> map): 
		location = Location.fromJsonMap(map["location"]),
		current = Current.fromJsonMap(map["current"]),
		forecast = Forecast.fromJsonMap(map["forecast"]);
	  //error = Error.fromJsonMap(map["forecast"]);

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['location'] = location == null ? null : location.toJson();
		data['current'] = current == null ? null : current.toJson();
		data['forecast'] = forecast == null ? null : forecast.toJson();
	//	data['error'] = error == null ? null : error?.toJson();
		return data;
	}
}
