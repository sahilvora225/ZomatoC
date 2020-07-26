import 'package:flutter/material.dart';

import '../models/restaurant.dart';

class RestaurantCard extends StatelessWidget {
  final Restaurant restaurant;

  RestaurantCard(this.restaurant);

  List<Widget> getStars(double rating) {
    List<Widget> stars = [];
    for (int i = 0; i < (rating / 1).floor(); i++) {
      stars.add(Icon(Icons.star));
    }
    if (rating % 1 != 0 && stars.length < 5) {
      stars.add(Icon(Icons.star_half));
    }
    for (int i = 0; stars.length < 5; i++) {
      stars.add(Icon(Icons.star_border));
    }
    return stars;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      width: double.infinity,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                restaurant.logo,
                height: 200,
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                restaurant.name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              children: <Widget>[
                ...getStars(restaurant.rating),
                SizedBox(width: 5),
                Text(restaurant.rating.toString()),
                SizedBox(width: 5),
                Text('(${restaurant.totalReviews} Delivery Reviews)'),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                restaurant.tags.join(', '),
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 8, left: 8, right: 8,),
              child: Text('₹${restaurant.costPerPerson} per person | ${restaurant.distInMins} mins'),
            ),
            Container(
              padding: EdgeInsets.all(5),
              color: Colors.cyan[100],
              child: Row(
                children: <Widget>[
                  Icon(Icons.security),
                  Text('Safety measures followed here'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
