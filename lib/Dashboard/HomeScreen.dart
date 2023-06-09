import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:hello_devsecit/hello_devsecit.dart';
import 'package:nbhood/Flat/SelectFlat.dart';
import 'package:nbhood/Widgets/bottomNavBar.dart';
import 'package:nbhood/config.dart';
import 'package:nbhood/exporter.dart';

class HomeScreen extends StatefulWidget {
  var uid;
  HomeScreen({super.key, required this.uid});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Gate No 21"),
                Text(
                  "Mr. Something wrong",
                  style: TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_active,
                  color: APP_BTN_COLOR,
                ))
          ],
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: [
            Container(
              height: 120,
              padding: EdgeInsets.all(18),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 2 - 18,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        H2(text: "Check-in  by code"),
                        SizedBox(height: 15),
                        Paragraph(
                            text:
                                "Enter code for Guest, Staff, Househelp and vendors"),
                      ],
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width / 2 - 54,
                      child: Row(
                        children: [
                          Image.asset(
                            "assets/img/face.jpg",
                            height: 70,
                          ),
                          Container(
                            height: 70,
                            color: Colors.grey,
                            width: 1,
                          ),
                          Image.asset("assets/img/fingerprint.jpg"),
                        ],
                      )),
                ],
              ),
            ),
            Divider(),
            Container(
              height: 70,
              width: MediaQuery.of(context).size.width,
              child: OtpTextField(
                numberOfFields: 6,
                onSubmit: (v) {},
              ),
            ),
            primaryButton(
                const Icon(
                  Icons.check_circle,
                  color: Colors.white,
                ),
                "SUBMIT"),
            const SizedBox(height: 30),
            H2(
              text: "Check-in without code",
              fontWeight: FontWeight.normal,
            ),
            const Text("Pick by category"),
            const SizedBox(height: 5),
            const Divider(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 96,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                    onTap: () => go(
                        context, SelectFlat(uid: widget.uid, type: "Delivery")),
                    child: imageButton("assets/img/delivery.jpg", "Delivery"),
                  ),
                  imageButton("assets/img/guests.png", "Guests"),
                  imageButton("assets/img/taxi.png", "Cab"),
                  imageButton("assets/img/truck.png", "Vendor"),
                  imageButton("assets/img/others.png", "Others"),
                ],
              ),
            ),
            SizedBox(height: 15),
            rowButton(context, "assets/img/delivery.jpg", "Parcel Management"),
            rowButton(context, "assets/img/leader.png", "Leader Board"),
          ],
        ),
        bottomNavigationBar: bottomNavBar(context, widget.uid, 0));
  }
}
