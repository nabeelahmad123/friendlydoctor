import 'package:flutter/material.dart';
import 'package:medic/Sigupscreen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.width;

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
              "Login",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w900),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Please enter your details",
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
                  child:
                      //  TextFormField(
                      // cursorColor: Colors.black,
                      //keyboardType: inputType,
                      // decoration: new InputDecoration(
                      //border: InputBorder.none,
                      // focusedBorder: InputBorder.none,
                      // enabledBorder: InputBorder.none,
                      // errorBorder: InputBorder.none,
                      // disabledBorder: InputBorder.none,
                      // contentPadding:
                      // EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      // hintText: "Hint here"
                      // ),
                      // )

                      TextField(
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

                    // new InputDecoration.collapsed(
                    //   hintText: 'Search Doctors, specialities, Hospitals'
                    // ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
              child: Card(
                child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 3.0),
                  child:
                      //  TextFormField(
                      // cursorColor: Colors.black,
                      //keyboardType: inputType,
                      // decoration: new InputDecoration(
                      //border: InputBorder.none,
                      // focusedBorder: InputBorder.none,
                      // enabledBorder: InputBorder.none,
                      // errorBorder: InputBorder.none,
                      // disabledBorder: InputBorder.none,
                      // contentPadding:
                      // EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                      // hintText: "Hint here"
                      // ),
                      // )

                      TextField(
                    decoration: InputDecoration(
                      // prefixIcon: Container(
                      //   padding: EdgeInsets.all(8.0),
                      //   decoration: BoxDecoration(
                      //    // boxShadow: BoxShadow.lerpList(1.0, 0.2, t)
                      //   ),
                      //   height: 20.0,
                      //   width: 20.0,
                      //   child: Image.asset("lib/assets/images/pak_flag.png")),
                      border: InputBorder.none,
                      hintText: 'Enter Your Name',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: width * .39,
                    height: height / 10,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text("Signin"),
                      onPressed: () {},
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(1.0),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Container(
                    width: width * .39,
                    height: height / 10,
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.red,
                      child: Text("Signup"),
                      onPressed: () {
                        print("clicked");
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Signup()),
                        );
                      },
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(1.0),
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
