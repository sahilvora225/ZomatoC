import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';

class OrderScreen extends StatefulWidget {
  @override
  _OrderScreenState createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CustomAppBar(),
        Expanded(
          child: Center(
            child: Text('Order Screen'),
          ),
        ),
      ],
    );
  }
}
