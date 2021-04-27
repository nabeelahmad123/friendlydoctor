import 'package:flutter/material.dart';

import 'calendarCard.dart';
import 'hospitalCard.dart';
import 'myDocCar.dart';

class DoctorSpeciality extends StatefulWidget {
  @override
  _DoctorSpecialityState createState() => _DoctorSpecialityState();
}

class _DoctorSpecialityState extends State<DoctorSpeciality> {

  bool btn1 = true;
  bool btn2 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Acupuncture"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: InkWell(onTap: () {}, child: Text("Filters")),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              Container(
                //height: length.toDouble(),
               // color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FlatButton(onPressed: (){
                      setState(() {
                        btn1=true;
                        btn2=false;
                      });
                    }, child: Text(
                        "ALL DOCTORS",style: TextStyle(color: btn1?Colors.blue:Colors.grey),
                    ),),

                    FlatButton(onPressed: (){
                      setState(() {
                        btn1=false;
                        btn2=true;
                      });
                    }, child: Text(
                        "NEARBY DOCTORS",style: TextStyle(color: btn2?Colors.blue:Colors.grey),
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                  fillColor: Colors.grey,
                  labelText: "Search Acupuncture",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "All Acupuncture in Lahore",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              Container(
                child:  btn1? allDoctorTab() : allDoctorTab(),
              ),


            ],
          ),
        )),
      ),
    );
  }



  Widget allDoctorTab(){

    return Container(
      height: MediaQuery.of(context).size.height/1.5,
      child: ListView.builder(
          itemCount: 4,
          itemBuilder: (con,ind){
            return MyDocCard();
          }),
    );
  }


}
