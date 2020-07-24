import 'package:flutter/material.dart';

class UnderconstructionScreen extends StatelessWidget {
  final String _pageName;

  UnderconstructionScreen(this._pageName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        AppBar(
          title: Text('ZomatoC'),
          centerTitle: true,
        ),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.android,
                size: 60,
              ),
              SizedBox(
                height: 10,
              ),
              Text('$_pageName is underconstruction')
            ],
          ),
        ),
      ],
    );
  }
}
