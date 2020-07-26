import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/latest_offers.dart';
import '../widgets/order_again.dart';
import '../widgets/restaurant_list.dart';
import '../widgets/top_brands.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomAppBar(),
        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: <Widget>[
                OrderAgain(),
                LatestOffers(),
                TopBrands(),
                RestaurantList(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
