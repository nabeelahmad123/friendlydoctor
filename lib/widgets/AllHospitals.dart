import 'package:flutter/material.dart';

import 'HospitalTiles.dart';

class AllHospitals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        HospitalTiles(
            hospitalName: "(ryk) Rahim Yar Khan Hospital",
            hospitalAddress: "Near Superior College, canal Road",
            doctorAvailable: 2,
          ),
          HospitalTiles(
            hospitalName: "1-b Hospital",
            hospitalAddress:
                "F-8/3, Main KohistanRoad, Opp Islamabad Diagnostic Center",
            doctorAvailable: 2,
          ),
          HospitalTiles(
            hospitalName: "13-b Hospital",
            hospitalAddress: "13-B Aibak Block",
            doctorAvailable: 3,
          ),
          HospitalTiles(
            hospitalName: "14/7 Avenue",
            hospitalAddress: "7 Civil Lines",
            doctorAvailable: 1,
          ),
          HospitalTiles(
            hospitalName: "2-jehan Plaza",
            hospitalAddress: "Saddar",
            doctorAvailable: 1,
          ),
          HospitalTiles(
            hospitalName: "20/a, Al-mustafa Homes",
            hospitalAddress: "Unit No 9",
            doctorAvailable: 1,
          ),
          HospitalTiles(
            hospitalName: "13-b Hospital",
            hospitalAddress: "13-B Aibak Block",
            doctorAvailable: 3,
          ),
          HospitalTiles(
            hospitalName: "14/7 Avenue",
            hospitalAddress: "7 Civil Lines",
            doctorAvailable: 1,
          ),
          HospitalTiles(
            hospitalName: "2-jehan Plaza",
            hospitalAddress: "Saddar",
            doctorAvailable: 1,
          ),
          HospitalTiles(
            hospitalName: "20/a, Al-mustafa Homes",
            hospitalAddress: "Unit No 9",
            doctorAvailable: 1,
          ),
      ],
    );
  }
}