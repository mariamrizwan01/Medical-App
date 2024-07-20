import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          left: width * 0.05,
          top: height * 0.08,
          right: width * 0.05,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'My Profile',
                  style: TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            SizedBox(height: height * 0.05),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: height * 0.05,
                  backgroundImage: AssetImage("assets/images/profile.jpeg"),
                ),
                SizedBox(
                  width: width * 0.03,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: height * 0.02,
                    ),
                    Text(
                      'Hi, Mariam Rizwan',
                      style: TextStyle(
                          color: Colors.grey, fontSize: 20),
                    ),
                    Text(
                      'Welcome to Quick Medical Store',
                      style: TextStyle(
                          color: Colors.grey, fontSize: 16),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Profilewidget(
              height: height,
              width: width,
              image: "assets/images/edit.png",
              title: 'Edit Profile',
            ),
            SizedBox(
              height: height * 0.04,
            ),
            Profilewidget(
                height: height,
                width: width,
                image: "assets/images/orders.png",
                title: 'My Orders',
                ),
            SizedBox(
              height: height * 0.04,
            ),
            Profilewidget(
                height: height,
                width: width,
                image: "assets/images/clock.png",
                title: 'Billing',
                ),
            SizedBox(
              height: height * 0.04,
            ),
            Profilewidget(
                height: height,
                width: width,
                image: "assets/images/faq.png",
                title: 'Faq',
                ),
          ],
        ),
      ),
    );
  }
}

class Profilewidget extends StatelessWidget {
  const Profilewidget({
    super.key,
    required this.height,
    required this.width,
    required this.title,
    required this.image,
  });

  final double height;
  final double width;
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: height * 0.05,
                  width: width * 0.08,
                  child: Image.asset(
                    fit: BoxFit.fill,
                    image,
                  ),
                ),
                SizedBox(
                  width: width * 0.04,
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: height * 0.03),
                ),
              ],
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              size: height * 0.03,
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: width * 0.12),
          child: Divider(),
        ),
      ],
    );
  }
}