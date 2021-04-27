import 'package:flutter/material.dart';

import 'calendarCard.dart';
import 'doctorProfile.dart';
import 'hospitalCard.dart';

class MyDocCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DoctorProfile()));
      },
          child: Container(
        child: Card(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      height: 100,
                      width: 100,
                      image: AssetImage("lib/assets/images/man-profile.jpg"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Dr. Muhammad Zain",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellow),
                            Text(
                              "(5.0 /5) 8 Reviews",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '''Homeopath, Acupuncture \nBHMS, Dip-Accu''',
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                        Text(
                          '''Consultant with over 3 year(s) \nof experience''',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  padding: EdgeInsets.all(8),
                  //width:double.infinity,
                  //width: MediaQuery.of(context).size.width,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                     shrinkWrap: true,
                      physics: ClampingScrollPhysics(),
                    children: [
                      //Row(
                     
                      //physics:ScrollPhysics(),
                      //reverse: true,
                      
                      //scrollDirection: Axis.horizontal,
                      //children: [
                      HospitalCard(),
                       SizedBox(width:10),
                      HospitalCard(),

                      // ],
                      // ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 60,
                      child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: ClampingScrollPhysics(),
                    children: [
                      CalendarCard(
                        myIcon: Icons.calendar_today,
                        mytitle: "In-clinic \nAppointment",
                        myColor: Colors.transparent,
                        mytitleColor:true,
                      ),

                      SizedBox(width:10),
                      CalendarCard(
                        myIcon: Icons.videocam,
                        mytitle: "Video \nConsult",
                        myColor: Colors.red,
                        mytitleColor:false,
                      ),
                      SizedBox(width:10),
                      CalendarCard(
                        myIcon: Icons.star,
                        mytitle: "View \nProfile",
                        myColor: Colors.red,
                        mytitleColor:false,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
