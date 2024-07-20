import 'package:flutter/material.dart';
import 'package:medicalapp/colors.dart';

class Product extends StatelessWidget {

  const Product({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: 2,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Column(children: [
              Container(
                width: double.infinity,
                height: 300,
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                    color: Color(0xFFF2F8FF),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: scolor,
                        blurRadius: 4,
                        spreadRadius: 2,
                      )
                    ]),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(children: [
                        InkWell(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                           child: Image.asset("assets/images/products.png",
                           fit: BoxFit.fill,
                           ),
                          ),
                        )
                      ])
                    ]),
              )
            ]);
          },
        ));
  }
}
