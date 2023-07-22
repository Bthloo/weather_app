import 'package:flutter/material.dart';
import 'package:weatherr_app/home/home_screen.dart';

import 'info_buttom_sheet.dart';

class SearchScreen extends StatelessWidget {
  static const String routeName = 'search';
  var citynameController = TextEditingController();
  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                showinfoSheet(context);
              },
              icon: Icon(Icons.info_outline,color: Theme.of(context).primaryColor,))
        ],
        backgroundColor: const   Color(0xFFE3F2FD),
        title: const Text('Weather App'),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment(0.8, 1),
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
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(30),
                child: Form(
                  key: formkey,
                  child: TextFormField(
                    validator: (text) {
                      if (text == null || text
                          .trim()
                          .isEmpty) {
                        return 'Please Enter a Valid City';
                      }
                    },
                    controller: citynameController,
                    style: const TextStyle(
                        color: Color(0xFF0D47A1),

                    ),
                    decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF0D47A1),
                            )),
                        labelText: 'Enter City Name',
                        //suffixIcon: ,
                        labelStyle: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF0D47A1).withOpacity(.6)
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF0D47A1),
                            )
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: const BorderSide(
                              width: 2,
                              color: Color(0xFF0D47A1)
                          ),
                        ),
                        fillColor: const Color(0xffFFFFFF).withAlpha(80),
                        filled: true
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xFF0D47A1),
                    ),
                  ),
                  onPressed: () {
                    if (formkey.currentState?.validate() == false) {
                      return;
                    }
                    else {
                      Navigator.pushNamed(context, HomeScreen.routeName,
                          arguments: citynameController.text);
                    }
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 60),
                    child: Text('Search',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white
                      ),
                    ),
                  )
              )
            ],
          ),
        ),
      ),
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
