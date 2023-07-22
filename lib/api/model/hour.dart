import 'package:weatherr_app/api/model/condition.dart';

class Hour {

  int time_epoch;
  String time;
  double temp_c;
  double temp_f;
  int is_day;
  Condition condition;
  double wind_mph;
  double wind_kph;
  int wind_degree;
  String wind_dir;
  double pressure_mb;
  double pressure_in;
  double precip_mm;
  double precip_in;
  int humidity;
  int cloud;
  double feelslike_c;
  double feelslike_f;
  double windchill_c;
  double windchill_f;
  double heatindex_c;
  double heatindex_f;
  double dewpoint_c;
  double dewpoint_f;
  int will_it_rain;
  int chance_of_rain;
  int will_it_snow;
  int chance_of_snow;
  double vis_km;
  double vis_miles;
  double gust_mph;
  double gust_kph;
  double uv;

	Hour.fromJsonMap(Map<String, dynamic> map): 
		time_epoch = map["time_epoch"],
		time = map["time"],
		temp_c = map["temp_c"],
		temp_f = map["temp_f"],
		is_day = map["is_day"],
		condition = Condition.fromJsonMap(map["condition"]),
		wind_mph = map["wind_mph"],
		wind_kph = map["wind_kph"],
		wind_degree = map["wind_degree"],
		wind_dir = map["wind_dir"],
		pressure_mb = map["pressure_mb"],
		pressure_in = map["pressure_in"],
		precip_mm = map["precip_mm"],
		precip_in = map["precip_in"],
		humidity = map["humidity"],
		cloud = map["cloud"],
		feelslike_c = map["feelslike_c"],
		feelslike_f = map["feelslike_f"],
		windchill_c = map["windchill_c"],
		windchill_f = map["windchill_f"],
		heatindex_c = map["heatindex_c"],
		heatindex_f = map["heatindex_f"],
		dewpoint_c = map["dewpoint_c"],
		dewpoint_f = map["dewpoint_f"],
		will_it_rain = map["will_it_rain"],
		chance_of_rain = map["chance_of_rain"],
		will_it_snow = map["will_it_snow"],
		chance_of_snow = map["chance_of_snow"],
		vis_km = map["vis_km"],
		vis_miles = map["vis_miles"],
		gust_mph = map["gust_mph"],
		gust_kph = map["gust_kph"],
		uv = map["uv"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['time_epoch'] = time_epoch;
		data['time'] = time;
		data['temp_c'] = temp_c;
		data['temp_f'] = temp_f;
		data['is_day'] = is_day;
		data['condition'] = condition == null ? null : condition.toJson();
		data['wind_mph'] = wind_mph;
		data['wind_kph'] = wind_kph;
		data['wind_degree'] = wind_degree;
		data['wind_dir'] = wind_dir;
		data['pressure_mb'] = pressure_mb;
		data['pressure_in'] = pressure_in;
		data['precip_mm'] = precip_mm;
		data['precip_in'] = precip_in;
		data['humidity'] = humidity;
		data['cloud'] = cloud;
		data['feelslike_c'] = feelslike_c;
		data['feelslike_f'] = feelslike_f;
		data['windchill_c'] = windchill_c;
		data['windchill_f'] = windchill_f;
		data['heatindex_c'] = heatindex_c;
		data['heatindex_f'] = heatindex_f;
		data['dewpoint_c'] = dewpoint_c;
		data['dewpoint_f'] = dewpoint_f;
		data['will_it_rain'] = will_it_rain;
		data['chance_of_rain'] = chance_of_rain;
		data['will_it_snow'] = will_it_snow;
		data['chance_of_snow'] = chance_of_snow;
		data['vis_km'] = vis_km;
		data['vis_miles'] = vis_miles;
		data['gust_mph'] = gust_mph;
		data['gust_kph'] = gust_kph;
		data['uv'] = uv;
		return data;
	}
}
