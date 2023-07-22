import 'dart:async';
import 'dart:io';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:weatherr_app/api/api_manager.dart';
import 'package:weatherr_app/api/model/WeatherRes.dart';

class WeatherViewModel extends Cubit<WeatherState>{
  WeatherViewModel():super(LoadingState());
  void loadingWeather(String cityName)async{
   try{
     var response = await ApiManager.getWeatherData(cityName);
     response.forecast.forecastday.removeAt(0);
     emit(SuccessState(response));
   }on TimeoutException catch (ex) {
     emit(ErrorState('Please Check Your Internet \n $ex'));
   }on ClientException catch (ex) {
     emit(ErrorState("Please Check Your Internet \n $ex"));
   }on IOException catch (ex) {
     emit(ErrorState(ex.toString()));
   }
   catch (ex){
     emit(ErrorState('Enter a Valid City \n $ex'));
   }

  }
}
abstract class WeatherState{}
class LoadingState extends WeatherState{
  String? message;
  LoadingState({this.message});
}
class SuccessState extends WeatherState{
  WeatherRes weather;
  SuccessState(this.weather);
}
class ErrorState extends WeatherState{
  String? error;
  ErrorState(this.error);
}