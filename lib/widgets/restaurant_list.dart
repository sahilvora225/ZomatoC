import 'package:flutter/material.dart';

import '../provider/restaurants.dart';
import '../widgets/restaurant_card.dart';
import './latest_offers.dart';
import './top_brands.dart';

class RestaurantList extends StatelessWidget {
  final List restaurants = Restaurants.restaurants;

  List<Widget> getRestaurantsList() {
    List<Widget> restaurantsList = [];
    for(int i = 0; i < restaurants.length; i++) {
      if (i == 3) {
        restaurantsList.add(LatestOffers());
      }
      if (i == 6) {
        restaurantsList.add(TopBrands());
      }
      restaurantsList.add(RestaurantCard(restaurants[i]));
    }
    return restaurantsList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('${restaurants.length} places delivering to you'),
          Text('Everything in the list - go nuts!'),
          SizedBox(height: 20,),
          Column(
            children: [...getRestaurantsList()],
          ),
        ],
      ),
    );
  }
}
