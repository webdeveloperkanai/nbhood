import 'package:flutter/material.dart';
import 'package:hello_devsecit/hello_devsecit.dart';
import 'package:nbhood/Form/AppointmentVerify.dart';
import 'package:nbhood/exporter.dart';

class AppointmentDetails extends StatefulWidget {
  var uid, fid, type;
  AppointmentDetails(
      {super.key, required this.uid, required this.fid, required this.type});

  @override
  State<AppointmentDetails> createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController from = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController description = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.fid} Tower"),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Container(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H1(text: "Enter basic details!"),
                      SizedBox(height: 10),
                      Paragraph(
                          text:
                              "This information are required to validate person")
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.3,
                  height: 80,
                  child: Image.asset("assets/img/guests.png"),
                )
              ],
            ),
          ),
          Divider(),
          SizedBox(height: 35),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: name,
              decoration: InputDecoration(
                label: Text("Enter name"),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: phone,
              decoration: InputDecoration(
                label: Text("Enter mobile no."),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: from,
              decoration: InputDecoration(
                label: Text("Came from"),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: address,
              decoration: InputDecoration(
                label: Text("Address"),
              ),
            ),
          ),
          SizedBox(height: 15),
          Container(
            width: MediaQuery.of(context).size.width,
            child: TextFormField(
              controller: description,
              decoration: InputDecoration(
                label: Text("Short description"),
              ),
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () => go(
                context,
                AppointmentVerify(
                    address: address.text.toString(),
                    fid: widget.fid,
                    name: name.text.toString(),
                    phone: phone.text.toString(),
                    type: widget.type,
                    uid: widget.uid)),
            child: primaryButton(
                Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.white,
                ),
                "CONTINUE"),
          )
        ],
      ),
    );
  }
}
