import 'package:flutter/material.dart';
import 'package:weatherr_app/home/search_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static const String routeName = 'splash-screen';

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, SearchScreen.routeName);
    });
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                  border: Border.all(width: 0),
                  borderRadius: BorderRadius.circular(20), //<-- SEE HERE
                ),
                child: Image.asset('assets/images/pngwing.com.png'),
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Bthloo Weather App',
              style:TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
              ) ,),
          ],
        ),
      ),
    );
  }
}