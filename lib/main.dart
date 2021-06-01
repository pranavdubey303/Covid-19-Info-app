import 'package:covid_19_tracker/datasource.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_tracker/homepage.dart';
void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      fontFamily: 'Varela Round',
      primaryColor: primaryBlack
    ),

    home: HomePage(),
  ));
}
