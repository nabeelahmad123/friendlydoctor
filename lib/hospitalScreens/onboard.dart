import 'package:flutter/material.dart';

class OnBoardHospital extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            SizedBox(height:40),
            Center(child: CircularProgressIndicator(),),
          ],
        ),
      )
    );
  }
}