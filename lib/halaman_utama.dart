import 'package:flutter/material.dart';
import 'disease_data.dart';
import 'halaman_detail.dart';
class HalamanUtama extends StatelessWidget {
  const HalamanUtama({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text ('Halaman Utama')
        ),
        body : GridView.builder(
          gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                childAspectRatio: 0.9
            ),
            itemCount: listDisease.length,
            itemBuilder: (context, index) {
              final  Diseases data= listDisease[index];
              return InkWell(
                onTap: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=> HalamanDetail(data:data,),)
                  );
                },
                child: Card(
                  child: Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 2,
                        height: MediaQuery.of(context).size.width / 2,
                        child: Image.network(data.imgUrls),
                      ),
                      Text(data.name),
                    ],
                  ),
                ),
              );
            })
    );
  }
}