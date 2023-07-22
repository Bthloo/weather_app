import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherr_app/home/forecast_widget.dart';
import 'package:weatherr_app/home/weather_screen.dart';
import '../view model/weather_view_model.dart';
import 'info_buttom_sheet.dart';
class HomeScreen extends StatefulWidget {
  static const String routeName = 'home';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var arrg = ModalRoute.of(context)!.settings.arguments as String;
    var viewModel = WeatherViewModel();
    viewModel.loadingWeather(arrg);
    return  Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: (){
                  showinfoSheet(context);
                },
                icon: Icon(Icons.info_outline,color: Theme.of(context).primaryColor,))
          ],
          backgroundColor:  const   Color(0xFFE3F2FD),
          title: const Text('Weather App',),
        ),
        body: Material(
          child: Container(
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment(0.4, .8),
                colors: <Color>[

                   Color(0xFFE3F2FD),
                  Color(0xFFE3F2FD),
                    Color(0xFF64B5F6),
                  Color(0xFF1976D2),
                  Color(0xFF1565C0),
                   Color(0xFF0D47A1),
                ],
                tileMode: TileMode.mirror,
              ),
            ),
            child: SingleChildScrollView(
              child:BlocBuilder<WeatherViewModel,WeatherState>(
                bloc: viewModel,

                builder: (context, state) {
                  if(state is LoadingState){
                    return const Center(child: Text('Loading...'));
                  } else if(state is ErrorState){
                    return Center(child: Text(state.error.toString()));
                  }
                  else if(state is SuccessState){
                    var weather = state.weather ;
                    return Column(
                      children: [
                        Weather(cityName: weather.location.name,
                          countryName: weather.location.country,
                          tempC: weather.current.temp_c.toString(),
                          tempF: weather.current.temp_f.toString(),
                          conditionState: weather.current.condition.text,
                          conditionicon: weather.current.condition.icon,
                          time: weather.location.localtime,
                          windDirection:weather.current.wind_dir,
                          windSpeed: weather.current.wind_kph.toString(),
                          pressureIn: weather.current.pressure_in.toString(),
                          pressureOn: weather.current.pressure_mb.toString(),
                          precipin: weather.current.precip_in.toString(),
                          precipmm: weather.current.precip_mm.toString(),
                          humidity: weather.current.humidity.toString(),
                        ),
                        SizedBox(
                          height: 90,
                          child: ListView.separated(
                            itemBuilder: (context, index) {
                              return ForecastWidget(
                                  date: state.weather.forecast.forecastday[index].date,
                                  temp: state.weather.forecast.forecastday[index].day.avgtemp_c.toString(),
                                  data: state.weather.forecast.forecastday[index].day.avghumidity.toString()
                              );
                            },
                            itemCount: state.weather.forecast.forecastday.length,
                            scrollDirection: Axis.horizontal,
                            physics: const PageScrollPhysics(),
                            separatorBuilder: ( BuildContext context, int index) {
                              return const SizedBox(width: 10,);
                            },
                          ),
                        ),
                        //const SizedBox(height: 20,),
                  ]

                    );
                  }
                  return const Center(
                    child: Text('Something Went Wrong'),
                  );
                },

              )

            ),
          ),
        )


    );
  }
  void showinfoSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        isScrollControlled: false,
        context: context,
        builder: (context) {
          return const InfoButtomSheet();
        });
  }
}

