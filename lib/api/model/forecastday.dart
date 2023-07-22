import 'package:weatherr_app/api/model/day.dart';
import 'package:weatherr_app/api/model/astro.dart';
import 'package:weatherr_app/api/model/hour.dart';

class Forecastday {

  String date;
  int date_epoch;
  Day day;
  Astro astro;
  List<Hour> hour;

	Forecastday.fromJsonMap(Map<String, dynamic> map): 
		date = map["date"],
		date_epoch = map["date_epoch"],
		day = Day.fromJsonMap(map["day"]),
		astro = Astro.fromJsonMap(map["astro"]),
		hour = List<Hour>.from(map["hour"].map((it) => Hour.fromJsonMap(it)));

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['date'] = date;
		data['date_epoch'] = date_epoch;
		data['day'] = day == null ? null : day.toJson();
		data['astro'] = astro == null ? null : astro.toJson();
		data['hour'] = hour != null ? 
			this.hour.map((v) => v.toJson()).toList()
			: null;
		return data;
	}
}
