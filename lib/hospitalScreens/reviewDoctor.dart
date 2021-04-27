import 'package:flutter/material.dart';

class DoctorReviews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return           Card(
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
          );
  }
}