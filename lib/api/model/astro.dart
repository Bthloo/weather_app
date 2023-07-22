
class Astro {

  String sunrise;
  String sunset;
  String moonrise;
  String moonset;
  String moon_phase;
  String moon_illumination;
  int is_moon_up;
  int is_sun_up;

	Astro.fromJsonMap(Map<String, dynamic> map): 
		sunrise = map["sunrise"],
		sunset = map["sunset"],
		moonrise = map["moonrise"],
		moonset = map["moonset"],
		moon_phase = map["moon_phase"],
		moon_illumination = map["moon_illumination"],
		is_moon_up = map["is_moon_up"],
		is_sun_up = map["is_sun_up"];

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['sunrise'] = sunrise;
		data['sunset'] = sunset;
		data['moonrise'] = moonrise;
		data['moonset'] = moonset;
		data['moon_phase'] = moon_phase;
		data['moon_illumination'] = moon_illumination;
		data['is_moon_up'] = is_moon_up;
		data['is_sun_up'] = is_sun_up;
		return data;
	}
}
