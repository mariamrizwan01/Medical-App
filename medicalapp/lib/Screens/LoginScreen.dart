import 'package:flutter/material.dart';
import 'package:medicalapp/Screens/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController countrycode = TextEditingController();
  @override
  
  void initState() {
    countrycode.text = "+92";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          margin: EdgeInsets.only(left: 25, right: 25),
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Padding(
                padding: EdgeInsets.all(50),
                child: Image.asset(
                  "assets/images/logo.png",
                  alignment: Alignment.center,
                )),
            SizedBox(
              height: 20,
            ),
            Text(
              "Please Enter your Mobie Number to Login",
              style: TextStyle(
                fontWeight: FontWeight.w200,
                fontSize: 18,
                color: Color.fromARGB(255, 88, 88, 88),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 55,
              decoration: BoxDecoration(
                  border: Border.all(
                    width: 1,
                    color: Colors.grey,
                  ),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  SizedBox(width: 10),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller: countrycode,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Text(
                    "|",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Phone",
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 45,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => HomeScreen() ));
                },
                child: Text("CONTINUE"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ]),
        ));
  }
}
