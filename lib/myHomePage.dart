
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:medic/custom_Card.dart';

import 'Screens/AllDiseases.dart';
import 'Screens/LabTest.dart';
import 'Screens/choose_Speciality.dart';
import 'Screens/healthForum.dart';
import 'Screens/medicineDelivery.dart';
import 'widgets/HospitalList.dart';
import 'widgets/myDrawer.dart';
import 'widgets/myStats.dart';
import 'widgets/socialCard.dart';
import 'widgets/yourAppointments.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({this.title});

  final String title;
 

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.blue,
      drawer: MyDrawer(),
      
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.redAccent), 
       backgroundColor: Colors.blue,
       centerTitle: true,
        title: Text("Friendly Doctor",style:TextStyle(color:Colors.white)),


        actions: [
            IconButton(icon: Icon(Icons.notifications,
            color:Colors.white), onPressed: null)
        ],
      ),
      body: Center(
       
        child: ListView(
          children: [
            Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

//========================= Your Appointments            
                YourAppointments(),
//==================== Search Doctors
 Container(
                  padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 0.0),
                  
                  child: Card(
                   
                    child:Container(
                      padding:EdgeInsets.symmetric(horizontal:10.0,vertical: 3.0),
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
    prefixIcon: Icon(Icons.search),
    border: InputBorder.none,
    hintText: 'Search Doctors, specialities, Hospitals',
  ),

  // new InputDecoration.collapsed(
  //   hintText: 'Search Doctors, specialities, Hospitals'
  // ),
),     

                     
                    ),
                  ),
                ),

//====================== Book Appointment
                InkWell(
                  onTap: (){
                   Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChooseSpeciality(),

                    ));
                  },
                                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 0.0),
                    
                    child: Card(
                     
                      child:Container(
                        padding:EdgeInsets.symmetric(horizontal:10.0,vertical: 10.0),
                        child: Row(children: [
                          ClipRRect(
                             borderRadius: BorderRadius.circular(28.0),
                            child: Container(
                              padding: const EdgeInsets.all(10.0),
                              //height:50.0,
                              //width:50.0,    
                              color: Color(0xffebf7fc),                    
                              child: Image.asset("lib/assets/images/book-appointments5.png",
                              height: 30.0,
                              width: 30.0,
                              //fit: BoxFit.scaleDown
                              ),),
                          ),
                          
                          
                          SizedBox(width:20.0),
                          Text("Book Appointment",style:TextStyle(
                            color: Color(0xff2d5974),
                            fontWeight: FontWeight.bold)),

                          Expanded(child: SizedBox(width:20),),
                          Row(
                            children: [
                              // Text("Login"),
                              
                                Icon(Icons.arrow_forward_ios,color:Colors.black54,size: 15,),
                            ],
                          ),

                        ],),
                      ),
                    ),
                  ),
                ),
//========================= Online Video Consultation
              InkWell(
                onTap: (){
                                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChooseSpeciality(),

                    ));
                },
                              child: Container(
                    padding: const EdgeInsets.symmetric(horizontal:5.0,vertical: 0.0),
                    
                    child: Card(
                     
                      child:Container(
                        padding:EdgeInsets.symmetric(horizontal:10.0,vertical: 10.0),
                        child: Row(children: [

                          ClipRRect(
                            borderRadius: BorderRadius.circular(28.0),
                            child: Container(
                              //height:50.0,
                              //width:50.0,
                              color: Color(0xffebf7fc),
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(10.0),
                                child: Image.asset("lib/assets/images/video_consultation.png"),
                                width: 50,
                                height: 50,
                              ),
                              //Icon(Icons.video_call)
                              ),
                              ),

                          
                          
                          
                          SizedBox(width:20.0),
                          Text("Online Video Consultation",style:TextStyle(
                            color: Color(0xff2d5974),
                            fontWeight: FontWeight.bold)),

                          Expanded(child: SizedBox(width:20),),
                          Row(
                            children: [
                              // Text("Login"),
                              
                                Icon(Icons.arrow_forward_ios,color:Colors.black54,size: 15,),
                            ],
                          ),

                        ],),
                      ),
                    ),
                  ),
              ),
//========================= cross axis 2  
              GridView(
                
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
               children: <Widget>[

                  //========================= 1
                  Custom_Card(

                    title:"Call Doctor Now", 
                  custom_Icon: Image.asset("lib/assets/images/doctor-call.png",),
                  myFunction:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ChooseSpeciality(),

                    ));
                  }),
                  //========================= 2
                  Custom_Card(title:"Search Via Diseases", 
                  custom_Icon: Image.asset("lib/assets/images/Search_Virus.png"),
                  myFunction:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AllDiseases(),

                    ));
                  }
                  ),                  
                  
                  //========================= 3
                  Custom_Card(title:"Lab Test Booking", custom_Icon: Image.asset("lib/assets/images/lab.png"),
                  myFunction:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>LabTest(),

                    ));
                  }
                  ),
                  //========================= 4
                  Custom_Card(title:"Medicine Delivery", custom_Icon: Image.asset("lib/assets/images/delivery.png"),
                  myFunction:(){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>DeliveryScreen(),

                    ));
                  }
                  ),
                  //========================= 5
                  Custom_Card(title:"Hospitals", custom_Icon: Image.asset("lib/assets/images/hospital.png"),
                  myFunction:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>hospitalList(),

                    ));
                  }
                  ),
                  //========================= 6
                  Custom_Card(title:"Health Forum", custom_Icon: Image.asset("lib/assets/images/forum2.png",),
                  myFunction:(){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HealthForum(),

                    ));
                  }
                  ),
               ]
                ),
//========================= bottom stats
              MyStats(),
//=========================  Social Icons
Row(
  children: [
    Expanded(child: Social_Card(title:"349K subscribers", custom_Icon: Icon(FontAwesome.youtube,color: Colors.red,),)),

    Expanded(child: Social_Card(title:"200M followers", custom_Icon: Icon(FontAwesome.facebook,color: Colors.blueAccent,),)),

    Expanded(child: Social_Card(title:"200M followers", custom_Icon: Icon(FontAwesome.instagram,color: Colors.orange,),)),

    Expanded(child: Social_Card(title:"Blogs", custom_Icon: Icon(FontAwesome5Brands.blogger_b,color: Colors.blueAccent,),)),
  ],
)
              ],
            ),
          ],
        ),
      ),
      
       );
  }
}
