import 'package:covid_19_tracker/datasource.dart';
import 'package:covid_19_tracker/pages/faq.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          SizedBox(height: 35,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>FaqPage()));
            },
    
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:10 ,vertical:15),
              margin: EdgeInsets.symmetric(horizontal:10 ,vertical: 5),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('FAQs',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  Icon(Icons.arrow_forward_outlined,color: Colors.white,)
                ],
              ),
            ),
          ),

          GestureDetector(
            onTap: (){
              launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
          },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:10 ,vertical:15),
              margin: EdgeInsets.symmetric(horizontal:10 ,vertical: 5),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Myth Busters',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  Icon(Icons.arrow_forward_outlined,color: Colors.white,)
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: (){
              launch('https://www.india.gov.in/spotlight/resources-overcome-covid-19#tab=tab-1');
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal:10 ,vertical:15),
              margin: EdgeInsets.symmetric(horizontal:10 ,vertical: 5),
              color: primaryBlack,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Resources',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  Icon(Icons.arrow_forward_outlined,color: Colors.white,)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
