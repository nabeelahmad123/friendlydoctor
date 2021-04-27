import 'package:flutter/material.dart';
import 'package:medic/hospitalScreens/hospitalprofile.dart';

class HospitalTiles extends StatelessWidget {
  final hospitalName;
  final hospitalAddress;
  final doctorAvailable;

  HospitalTiles({this.hospitalName, this.hospitalAddress, this.doctorAvailable});

  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        border:Border.all()
      ),
      child: InkWell(
                            onTap:(){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context)=>HospitalProfile())
                );
              },
              child: ListTile(
              leading: Image.asset("lib/assets/images/hospital2.png",
              height: 30.0,
              ),
              
              trailing: Icon(
                Icons.arrow_forward_ios,
                color:Colors.redAccent, size:15.0), 
              title: Text(hospitalName, style: TextStyle(fontSize: 12.0),),
              subtitle: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(hospitalAddress, style: TextStyle(fontSize: 12.0),),
                  Text("Doctor Onboard: $doctorAvailable", style: TextStyle(color:Colors.green),),
                ],
              ),
            ),
      ),
    );
  }
}