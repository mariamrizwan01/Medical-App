import 'package:flutter/material.dart';
import "package:material_design_icons_flutter/material_design_icons_flutter.dart";
import 'package:medicalapp/Screens/Product.dart';
import 'package:medicalapp/Screens/ProductDetail.dart';
import 'package:medicalapp/component/Product.dart';
import 'package:medicalapp/colors.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List categories = [
    "Detenal",
    "Eye",
    "Heart",
    "brain",
    "Ear",
  ];

  List<Icon> categoriesIcon = [
    Icon(
      MdiIcons.toothOutline,
      color: pcolor,
      size: 30,
    ),
    Icon(
      MdiIcons.eye,
      color: pcolor,
      size: 30,
    ),
    Icon(
      MdiIcons.heartPlus,
      color: pcolor,
      size: 30,
    ),
    Icon(
      MdiIcons.brain,
      color: pcolor,
      size: 30,
    ),
    Icon(
      MdiIcons.earHearing,
      color: pcolor,
      size: 30,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    pcolor.withOpacity(0.8),
                    pcolor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CircleAvatar(
                                radius: 30,
                                backgroundImage:
                                    AssetImage("assets/images/profile.jpeg"),
                              ),
                              Icon(
                                Icons.notifications_outlined,
                                color: wcolor,
                                size: 30,
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            "Hi, Mariam",
                            style: TextStyle(
                              color: wcolor,
                              fontWeight: FontWeight.w500,
                              fontSize: 25,
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Welcom to Quick Medical Store",
                            style: TextStyle(
                              color: wcolor,
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(top: 15, bottom: 20),
                              width: MediaQuery.of(context).size.width,
                              height: 55,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: wcolor,
                                  boxShadow: [
                                    BoxShadow(
                                      color: scolor,
                                      blurRadius: 6,
                                      spreadRadius: 3,
                                    ),
                                  ]),
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: "Search here..",
                                  hintStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.5),
                                  ),
                                  prefixIcon: Icon(
                                    Icons.search,
                                    size: 25,
                                  ),
                                ),
                              )),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Top Categories",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: bcolor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: categories.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return Column(
                            children: [
                              Container(
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 15),
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFF2F8FF),
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: scolor,
                                          blurRadius: 4,
                                          spreadRadius: 2,
                                        ),
                                      ]),
                                  child: Center(
                                    child: categoriesIcon[index],
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text(categories[index],
                                  style: TextStyle(
                                    color: bcolor.withOpacity(0.7),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  )),
                            ],
                          );
                        })),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/home_offer_image_section.png",
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          Text(
                            "Deals of the day",
                            style: TextStyle(
                              fontSize: 16,
                              color: bcolor.withOpacity(0.7),
                              fontWeight: FontWeight.w500,
                            ),
                          ), TextButton(
                            onPressed: () {
                          Navigator.push(
                      context, MaterialPageRoute(
                        builder: (context) => ProductDetail() ));

                            },
                            child: Text(
                            "More",
                            style: TextStyle(
                              fontSize: 14,
                              color: pcolor.withOpacity(0.7),
                              fontWeight: FontWeight.w400,
                            ),
                          ), ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3),
                  Product(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
