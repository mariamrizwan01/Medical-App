import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/LoginScreen.dart';
import 'package:medicalapp/Screens/SplashScreen.dart';

class WalkthoughScreen extends StatelessWidget {
  const WalkthoughScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.all(50),
              child: Image.asset(
                "assets/images/medicainebuy.png",
                alignment: Alignment.center,
              )),
          SizedBox(
            height: 20,
          ),
          Text(
            "View and buy",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Color.fromARGB(255, 3, 43, 63),
            ),
          ),
          Text(
            "Medicine online",
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 28,
              color: Color.fromARGB(255, 3, 43, 63),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Etiam moilis metus non purus",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 18,
                    color: Color.fromARGB(255, 88, 88, 88),
            ),
          ),
          Text(
            "faucibus sollicitudin. Pelientesque",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 18,
                    color: Color.fromARGB(255, 88, 88, 88),
            ),
          ),
          Text(
            "sagittis mi. integer.",
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: 18,
              color: Color.fromARGB(255, 88, 88, 88),
            ),
          ),

         Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerLeft,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SplashScreen(),
                      ));
                },
                child: Text(
                  "Skip",
                  style: TextStyle(
              color: Color.fromARGB(255, 88, 88, 88),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
        ])),
          Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                },
                child: Text(
                  "Next",
                  style: TextStyle(
                   color: Color.fromARGB(255, 2, 158, 230),
                    fontSize: 20,
                  ),
                ),
              ),
            ),
        ])),
        ]),
        );
  }
}
