import 'package:covid_19_tracker/datasource.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegionIndia extends StatefulWidget {
  const RegionIndia({Key key}) : super(key: key);

  @override
  _RegionIndiaState createState() => _RegionIndiaState();
}

class _RegionIndiaState extends State<RegionIndia> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal:10 ,vertical:30 ),
          color: primaryBlack,
          child: Text('Countrywide',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18,color: Colors.white),),
        ),
      ],
    );
  }
}
