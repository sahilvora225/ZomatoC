import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: MediaQuery.of(context).padding.top,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: 5,
        vertical: 10,
      ),
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              FlatButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.location_on,
                  size: 30,
                ),
                label: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Other',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Chikuwadi, Borivali (West)',
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
                padding: EdgeInsets.all(0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              IconButton(
                icon: Icon(Icons.payment),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.search,
                ),
                hintText: 'Search for restaurants, cuisines...',
                contentPadding: EdgeInsets.all(0),
                isDense: false),
          ),
        ],
      ),
    );
  }
}
