import 'package:flutter/material.dart';

class ReviewHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Share Your Experience"),
      ),
          body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal:20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: 20.0,),
              Text("Would you recommend this doctor"),
              SizedBox(height: 20.0,),
              Container(
                padding: EdgeInsets.all(10),
                alignment: Alignment.center,
                width: 200,
                color: Colors.grey[200],
                child: Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 10,),
                    Text("Yes, Hospital is Great"),
                  ],
                ),
              ),
              SizedBox(height: 20.0,),
            Text("Share your comments:"),
              SizedBox(height: 10.0,),
            TextFormField(
              keyboardType: TextInputType.multiline,
              maxLines: 8,
              maxLength: 1000,
              
              //contentPadding: new EdgeInsets.fromLTRB(10, 10, 10, 10),
              decoration: InputDecoration(
                border: OutlineInputBorder(),  
                hintText: "Write Your Comments",
                hintStyle: TextStyle(),
                contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                ),
                
            ),
            Center(
              child: FlatButton(
                color: Color(0xff2097f3),
                shape: RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                child: Text("Submit Feedback",style:TextStyle(
                  color:Colors.white)),
                onPressed: (){},
              ),
            )
            ],
          ),
        )
      ),
    );
  }
}