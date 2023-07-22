import 'package:flutter/material.dart';

class ForecastWidget extends StatelessWidget {
String? date;
String? temp;
String? data;
ForecastWidget({super.key, this.temp, this.date,this.data});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: MediaQuery.of(context).size.width,
      height: double.minPositive,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xffFFFFFF).withAlpha(80),
          border: Border.all(width: 0,color: const Color(0xffFFFFFF).withAlpha(80)),
          borderRadius: const BorderRadius.all(Radius.circular(10)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Icon(Icons.arrow_back,color: Color(0xffFFFFFF),),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("$date",style: Theme.of(context).textTheme.displaySmall,),
                Text("$temp º C",style: Theme.of(context).textTheme.displaySmall,),
                Text("humidity : $data %",style: Theme.of(context).textTheme.displaySmall,),
              ],
            ),
            const Icon(Icons.arrow_forward,color: Color(0xffFFFFFF),),
          ],
        ),
      ),
    );
  }
}
