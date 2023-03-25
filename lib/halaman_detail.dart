import 'package:flutter/material.dart';
import 'package:kuiswindy36/disease_data.dart';

class HalamanDetail extends StatelessWidget {

  final Diseases data;
  const HalamanDetail({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name),
      ),
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width ,
            height: MediaQuery.of(context).size.height ,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Image.network(data.imgUrls),
              ],
            ),
          ),
          Text('Disease Name: ' + data.name ),
          Text('Plant Name' + data.plantName),
          Text('Ciri Ciri ' + data.nutshell.toString()),
          Text('Disease ID' + data.id),
          Text('Symptom' + data.symptom),

        ],
      ),

    );
  }
}