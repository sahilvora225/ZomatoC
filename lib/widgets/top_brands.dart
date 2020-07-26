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
          Text(
            'Top Brands',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: Restaurants.getTopBrands()
                  .map((e) => Container(
                        height: 165,
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
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '${e.distInMins.toString()} mins',
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            )
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
