import 'package:covid_19_tracker/datasource.dart';
import 'package:flutter/material.dart';

class  FaqPage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('FAQs'),),
      body: ListView.builder(
          itemCount: DataSource.questionAnswers.length,
          itemBuilder: (context,index){
        return ExpansionTile(title: Text(DataSource.questionAnswers[index]['question']),
        children: <Widget>[
          Text(DataSource.questionAnswers[index]['answer'])

        ],
        );
      }
      ),
    );
  }
}
