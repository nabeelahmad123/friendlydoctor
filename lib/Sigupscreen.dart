import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:medic/Screens/OTPScreen.dart';

class Signup extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<Signup> {
  String phone;
  String name;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;
    final databaseReference = FirebaseFirestore.instance;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Signup",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "",
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 40.0,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        prefixIcon: Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                // boxShadow: BoxShadow.lerpList(1.0, 0.2, t)
                                ),
                            height: 20.0,
                            width: 20.0,
                            child:
                                Image.asset("lib/assets/images/pak_flag.png")),
                        border: InputBorder.none,
                        //   hintText: '  +92',
                        prefixText: "  +92"),
                    onChanged: (val) {
                      phone = val;
                    },
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height / 30.0,
            ),
            SizedBox(
              height: height / 30.0,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child: TextField(
                    onChanged: (val) {
                      name = val;
                    },
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your Name',
                    ),

                    // new InputDecoration.collapsed(
                    //   hintText: 'Search Doctors, specialities, Hospitals'
                    // ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: width * .9,
                    height: height / 9,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text("Signup"),
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => OTPScreen(phone)));
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
