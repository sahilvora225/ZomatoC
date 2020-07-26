import 'package:flutter/material.dart';

import '../provider/restaurants.dart';

class TopBrands extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('TOP BRANDS'),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Restaurants.getTopBrands()
                  .map((e) => Container(
                        height: 150,
                        width: 150,
                        child: Column(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage(e.logo),
                              maxRadius: 60,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              e.name,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
