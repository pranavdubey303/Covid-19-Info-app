import 'dart:convert';

import 'package:covid_19_tracker/datasource.dart';
import 'package:covid_19_tracker/pages/regional.dart';
import 'package:covid_19_tracker/panels/MostAffected.dart';
import 'package:covid_19_tracker/panels/infoPanel.dart';
import 'package:covid_19_tracker/panels/worldwidepanel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart'as http;

class HomePage extends StatefulWidget{


  @override
  _HomePageState createState() => _HomePageState();
  }
class _HomePageState extends State<HomePage> {

  Map worldData;
  fetchWorldwideData() async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = jsonDecode(response.body);
    });

  }
  List countryData;
  fetchCountryData() async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/countries');
    setState(() {
      countryData = jsonDecode(response.body);
    });

  }

@override
  void initState() {
  fetchWorldwideData();
  fetchCountryData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("COVID-19 News"),
      ),
      body: SingleChildScrollView (child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children : <Widget>[
          Container(
          height:100,
            alignment: Alignment.center,
            padding: EdgeInsets.all(10),
            color: Colors.orange[100],
            child: Text(DataSource.quote,style: TextStyle(color: Colors.orange[800],fontWeight: FontWeight.bold,fontSize: 16),),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Worldwide',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>RegionIndia()));
                  },
                  child: Container(

                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text('Regional',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white))),
                )
              ],
            ),
          ),

          worldData == null?CircularProgressIndicator():WorldwidePanel( worldData: worldData),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text('Affected Countries',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22)),
          ),
          SizedBox(height: 10,),
          countryData==null?Container():MostAffectedPanel(countryData: countryData,),
          InfoPanel(),
          SizedBox(height: 60,)

        ],
      )),
    );
  }
}