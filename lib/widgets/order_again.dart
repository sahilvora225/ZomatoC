import 'package:flutter/material.dart';

import '../models/restaurant.dart';
import '../provider/restaurants.dart';

class OrderAgain extends StatelessWidget {
  final List previousOrders = Restaurants.getOrderHistory();

  Widget getOrderAgainWidget(Restaurant restaurant) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Row(
        children: <Widget>[
          ClipRRect(
            child: Image.network(
              restaurant.logo,
              width: 70,
              height: 70,
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          SizedBox(
            width: 5,
          ),
          Container(
            width: 100,
            height: 70,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  restaurant.name,
                  softWrap: true,
                  overflow: TextOverflow.ellipsis,
                ),
                Text('${restaurant.offer}% OFF'),
                Text('${restaurant.distInMins} mins')
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> orderAgainWidgetList() {
    List<Column> widgetList = [];
    for (int i = 0; i < previousOrders.length; i++) {
      if (i % 2 == 0) {
        widgetList.add(
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[],
          ),
        );
      }
      widgetList[(i / 2).floor()]
          .children
          .add(getOrderAgainWidget(previousOrders[i]));
    }
    return widgetList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text('Order Again'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: orderAgainWidgetList(),
            ),
          ),
        ],
      ),
    );
  }
}
