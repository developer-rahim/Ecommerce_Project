import 'package:api_callig3/data/data.dart';
import 'package:api_callig3/model/deteailsScreen.dart';
import 'package:api_callig3/model/grideview.dart';
import 'package:flutter/material.dart';

class TabBarview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: colothsData.length,
        // physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, childAspectRatio: 0.7, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          var userdata = colothsData[index];
          return GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailScreen(
                              getdata: userdata,
                            )));
              },
              child: Gradview(
                prodectimage: userdata.prodectimage,
                prodectmodel: userdata.prodectmodel,
                prodectname: userdata.prodectname,
                prodectoldprice: userdata.prodectoldprice,
                prodectprice: userdata.prodectprice,
              ));
        });
  }
}
