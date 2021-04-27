import 'package:flutter/material.dart';

import 'diseaseCard.dart';

class ChooseSpeciality extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //iconTheme: IconThemeData(color: Colors.redAccent), 
       backgroundColor: Colors.blue,
       centerTitle: true,
        title: Text("Choose Speciality",style:TextStyle(color:Colors.white)),


        // actions: [
        //     IconButton(icon: Icon(Icons.notifications,
        //     color:Colors.white), onPressed: null)
        // ],
      ),
      body:ListView(
        children: [
          Column(
            children: [
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


          

          DiseaseCard(
            myTitle:"Acupuncture",
            subTitle:"ایکیو پنکچر کے سپیشلسٹ ڈاکٹر",
            myImage:"lib/assets/images/hospital2.png",
          ),
          DiseaseCard(
            myTitle:"Allergy Specialist",
            subTitle:"الرجی کے سپیشلسٹ ڈاکٹر",
            myImage:"lib/assets/images/hospital2.png",

          ),
          DiseaseCard(
            myTitle:"Andrologist",
            subTitle:"نظام اخراج کے سپیشلسٹ ڈاکٹر",
            myImage:"lib/assets/images/hospital2.png",
          ),
          DiseaseCard(
            myTitle:"Andrologist",
            subTitle:"نظام اخراج کے سپیشلسٹ ڈاکٹر",
            myImage:"lib/assets/images/hospital2.png",            
          ),
          DiseaseCard(
            myTitle:"Andrologist",
            subTitle:"نظام اخراج کے سپیشلسٹ ڈاکٹر",
            myImage:"lib/assets/images/hospital2.png",            
          ),
          DiseaseCard(
            myTitle:"Andrologist",
            subTitle:"نظام اخراج کے سپیشلسٹ ڈاکٹر",
            myImage:"lib/assets/images/hospital2.png",            
          ),

          ],),
        ],
      )
    );
  }
}