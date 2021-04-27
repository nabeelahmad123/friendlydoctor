import 'package:flutter/material.dart';

import 'neueCard.dart';
import 'reviewDoctor.dart';

class DoctorProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title:Text("Dr.Asifa Iqbal"),
      ),

      body:SingleChildScrollView(
              child: Column(
          children: [
            SizedBox(height: 20,),

            Row(
              children: [
                Column(
                  children: [
                    
                    Image(
                      height: 100,
                      width: 100,
                      image:AssetImage("lib/assets/images/doctor-female.png"),
                    )
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    
                    Text("Dr.Asifa Iqbal",
                    style:TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold,),),
                    Text("Dentist"),
                    Text('''BDS,M.Phil Oral Pathology & \n Consultant with 15 years of experience''')
                  ],
                ),
              ],
            ),

            SizedBox(
              height: 100.0,
                        child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: ClampingScrollPhysics(),
                children: [
          
              NeueCard(
                myIcon:Icons.access_time ,
                myTitle:"16 mins" ,
                mySubTitle: "Wait Time",
              ),

              NeueCard(
                myIcon:Icons.explore,
                myTitle:"15 years" ,
                mySubTitle:"Experience",
              ),            

              NeueCard(
                myIcon:Icons.favorite_border,
                myTitle:"91%" ,
                mySubTitle:"Patient Satisfaction",
              ), 

              NeueCard(
                myIcon:Icons.people_outline,
                myTitle:"100%" ,
                mySubTitle:"Client/ Staff Score",
              ), 
              ],),
            ),
//================= Book Video Consultation
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Book Video Consultation",
                  style:TextStyle(fontSize: 16, fontWeight:FontWeight.bold,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        icon:Icon(Icons.credit_card),
                        label:Text("Fee:"),
                      ),

                      Text("Rs.1200",
                  style:TextStyle(fontSize: 16, fontWeight:FontWeight.bold,
                  ),),

                    ],
                  ),
                Divider(height: 2.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        icon:Icon(Icons.wb_sunny),
                        label:Text("Days:"),
                      ),

                      Text("Mon, Tue, Wed, Thu, Fri, Sat, Sun",
                  style:TextStyle(fontSize: 12, fontWeight:FontWeight.bold,
                  ),),

                    ],
                  ), 
                   Divider(height: 2.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        icon:Icon(Icons.access_time),
                        label:Text("Time:"),
                      ),

                      Text("09:00 AM - 10:00 PM",
                  style:TextStyle(fontSize: 12, fontWeight:FontWeight.bold,
                  ),),

                    ],
                  ), 

                   Divider(height: 2.0,),

                   Center(
                     child: FlatButton(
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(10),
                       ),
                       color:Colors.blue,
                       onPressed: (){

                     }, child: Row(
                       mainAxisSize: MainAxisSize.min,
                       children: [
                         Icon(Icons.videocam,
                         color:Colors.white,
                         ),
                         SizedBox(width: 5,),
                         Text("Book Video Consultation",
                         style:TextStyle(color:Colors.white,), ),
                       ],
                     ),),
                   ) ,              

                ],
              ),
            ),
          ),
//================== Iqbal Clinics Lahore
          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Iqbal Clinics Lahore",
                  style:TextStyle(fontSize: 16, fontWeight:FontWeight.bold,
                  ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        icon:Icon(Icons.credit_card),
                        label:Text("Fee:"),
                      ),

                      Text("Rs.1500",
                  style:TextStyle(fontSize: 16, fontWeight:FontWeight.bold,
                  ),),

                    ],
                  ),
                Divider(height: 2.0,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        icon:Icon(Icons.wb_sunny),
                        label:Text("Days:"),
                      ),

                      Text("Mon, Tue, Wed, Thu, Fri, Sat, Sun",
                  style:TextStyle(fontSize: 12, fontWeight:FontWeight.bold,
                  ),),

                    ],
                  ), 
                   Divider(height: 2.0,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      FlatButton.icon(
                        icon:Icon(Icons.access_time),
                        label:Text("Time:"),
                      ),

                      Text("05:00 AM - 08:00 PM",
                  style:TextStyle(fontSize: 12, fontWeight:FontWeight.bold,
                  ),),

                    ],
                  ), 

                   Divider(height: 2.0,),

                   Center(
                     child: FlatButton(
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.circular(10),
                         ),
                         color:Colors.blue,
                         onPressed: (){

                       }, child: 
                           Text("Book Appointment",
                           style:TextStyle(color:Colors.white,), ),
                         
                       ),
                   ) ,              

                ],
              ),
            ),
          ),

//================== Video Section ===================

          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Video",
                  style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                  Image(
                    height: 250,
                    width: double.infinity,
                    image: AssetImage("lib/assets/images/youtube.jpg"),
                  )
                ]
              
              ),
            ),
          ),

//================== Reviews Section ===================

          Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text("Patient Reviews About Dr.",
                  style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),

                  Row(
                    children: [
                      Image(
                        height: 50,
                        width: 50,
                        image: AssetImage("lib/assets/images/man-profile.jpg"),
                      ),
                      SizedBox(width: 10,),
                  Column(
                    children: [
                      Text("Khushi bhatti - (Verified Patient)",
                      style:TextStyle(fontSize: 15.0,
                      fontWeight: FontWeight.normal),),

                      SizedBox(height: 10),
                      Container(
                      //width: double.infinity,
                      decoration: BoxDecoration(
                        color:Colors.grey[200],
                        borderRadius:BorderRadius.circular(10),
                        border:Border(),
                        //shape: RoundedRectangleBorder()
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.star, color:Colors.yellow),
                              Icon(Icons.star, color:Colors.yellow),
                              Icon(Icons.star, color:Colors.yellow),
                              Icon(Icons.star, color:Colors.yellow),
                              Icon(Icons.star, color:Colors.yellow),
                            ],
                          ),

                          Container(
                            width: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets'''),
                            ))
                        ],
                      )
                      )
                    ],
                  ),


                    ],
                  )
                ]
              
              ),
            ),
          ),
          
          DoctorReviews(),
          DoctorReviews(),
          Text("See All Reviews",
          style:TextStyle(color:Colors.blue,)),
          SizedBox(height: 15,),

//================== treatment available Section ===================
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Disceases Treatments available",
              style:TextStyle(fontSize: 14,
              fontWeight: FontWeight.bold)),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      //alignment: Alignment.center,
                      height: 30,
                      decoration: BoxDecoration(
                        color:Colors.grey[300],
                        borderRadius:BorderRadius.circular(10)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Gingivits",
          style:TextStyle(color:Colors.blue,)),
                      ),
                    ),
            SizedBox(width: 10,),
                    Container(
                      //alignment: Alignment.center,
                      height: 30,
                      decoration: BoxDecoration(
                        color:Colors.grey[300],
                        borderRadius:BorderRadius.circular(10)
                      ),
                      child:Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Teeth Problem",
          style:TextStyle(color:Colors.blue,)),
                      ),
                    ),
            SizedBox(width: 10,),
              Container(
                //alignment: Alignment.center,
                height: 30,
                decoration: BoxDecoration(
                  color:Colors.grey[300],
                  borderRadius:BorderRadius.circular(10)
                ),
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Tooth Decay",
          style:TextStyle(color:Colors.blue,)),
                ),
              )
 

                  ],
                ),
              ),
          Text("View All",
          style:TextStyle(color:Colors.blue,)),
          SizedBox(height: 15,),             
            ],
          ),   

//================== Experience Section ===================

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[

                  
         Text("Work Experience",
            style:TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.blue,)),

            SizedBox(height: 10,),
         Text("Dental Practitioner",
            style:TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color:Colors.blue,)),

                Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500''',
            style:TextStyle(
                //fontWeight: FontWeight.bold,
                //color:Colors.blue,
                )), 

                SizedBox(height: 20,),
                
         Text("Chief Dental Surgeon",
            style:TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color:Colors.blue,)),

                Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500''',
            style:TextStyle(
                //fontWeight: FontWeight.bold,
                //color:Colors.blue,
                )), 
SizedBox(height: 20,),
         Text("General Dentist",
            style:TextStyle(
                fontSize: 16,
                //fontWeight: FontWeight.bold,
                color:Colors.blue,)),

                Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500''',
            style:TextStyle(
                //fontWeight: FontWeight.bold,
                //color:Colors.blue,
                )),                            
                ]),
              ),
            ),
          ),

//================== About Me Section ===================

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[

                  
         Text("About Me",
            style:TextStyle(
                fontWeight: FontWeight.bold,
                color:Colors.blue,)),

            SizedBox(height: 20,),


                Text('''Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.''',
            style:TextStyle(
                //fontWeight: FontWeight.bold,
                //color:Colors.blue,
                )), 

                SizedBox(height: 20,),
                
                               
                ]),
              ),
            ),
          ),

          ],
        ),
      )
    );
  }
}