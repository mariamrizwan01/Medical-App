import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/WalkthoughScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => WalkthoughScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        color: Color.fromARGB(255, 2, 158, 230),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Padding(
              padding: EdgeInsets.all(50),
              child: Image.asset(
                "assets/images/logo.png",
                width: 700,
                height: 400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
