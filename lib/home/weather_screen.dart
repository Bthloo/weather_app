import 'package:flutter/material.dart';
class Weather extends StatelessWidget {
String? cityName;
String? countryName;
String? tempC;
String? tempF;
String? conditionState;
String? conditionicon;
String? time;
String? windDirection;
String? windSpeed;
String? pressureIn;
String? pressureOn;
String? precipin;
String? precipmm;
String? humidity;
Weather(
    {super.key, this.cityName,
      this.countryName,
      this.tempC,
      this.tempF,
      this.conditionState,
      this.conditionicon,
      this.time,
      this.windDirection,
      this.windSpeed,
      this.pressureIn,
      this.pressureOn,
      this.precipin,
      this.precipmm,
      this.humidity
    });
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          // decoration: BoxDecoration(
          //   border: Border.all(width: 5,),
          //   borderRadius: BorderRadius.all(Radius.circular(50)),
          // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$cityName,",style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
             color:  Color(0xFF0D47A1)
          ),),
          Text(countryName ?? '',style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color:  Color(0xFF0D47A1)
          ),),
          Text(time ?? '',style: const TextStyle(
              fontSize: 9,
              fontWeight: FontWeight.w500,
              color:  Color(0xFF0D47A1)

          ),),
          const SizedBox(height: 40,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset('assets/images/${conditionicon?.characters.takeLast(7)}'
                  ,width: 100,height: 100,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Text(tempC?? '',style: const TextStyle(
                              fontSize: 43,
                              fontWeight: FontWeight.bold,
                              color: Colors.white

                            ),),
                            Text("$conditionState",style: const TextStyle(
                              fontSize: 14,
                                color: Colors.white
                            ),),
                          ],

                        ),
                        const Text('º C',style: TextStyle(
                          fontSize: 20,
                            color: Colors.white
                        ),)
                      ],
                    ),
                  ],
                ),
              ],
            ),
          const SizedBox(height: 30,),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF).withAlpha(80),
                  border: Border.all(width: 0,color: const Color(0xffFFFFFF).withAlpha(80)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
              //  margin: EdgeInsets.all(8),
                padding: const EdgeInsets.all(15),
                child:  Column(
                  children: [
                     Text('Wind',style: Theme.of(context).textTheme.displayMedium),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('Direction : $windDirection',style: Theme.of(context).textTheme.displaySmall),
                        Text('Speed : $windSpeed',style: Theme.of(context).textTheme.displaySmall)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF).withAlpha(80),
                  border: Border.all(width: 0,color: const Color(0xffFFFFFF).withAlpha(80)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                //  margin: EdgeInsets.all(8),
                padding: const EdgeInsets.all(15),
                child:  Column(
                  children: [
                     Text('Pressure',style: Theme.of(context).textTheme.displayMedium,),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(' in : $pressureIn',style: Theme.of(context).textTheme.displaySmall),
                        Text(' mb : $pressureOn',style: Theme.of(context).textTheme.displaySmall)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF).withAlpha(80),
                  border: Border.all(width: 0,color: const Color(0xffFFFFFF).withAlpha(80)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                //  margin: EdgeInsets.all(8),
                padding: const EdgeInsets.all(15),
                child:  Column(
                  children: [
                     Text('Rain',style: Theme.of(context).textTheme.displayMedium,),
                    const SizedBox(height: 5,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text('in : $precipin',style: Theme.of(context).textTheme.displaySmall),
                        Text('mb : $precipmm',style: Theme.of(context).textTheme.displaySmall)
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10,),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffFFFFFF).withAlpha(80),
                  border: Border.all(width: 0,color: const Color(0xffFFFFFF).withAlpha(80)),
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                //  margin: EdgeInsets.all(8),
                padding: const EdgeInsets.all(15),
                child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                         Text('Humidity',style: Theme.of(context).textTheme.displaySmall),
                        Text('$humidity %',style: Theme.of(context).textTheme.displaySmall)
                      ],
                    ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
