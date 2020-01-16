import 'package:flutter/material.dart';
import 'package:beats/src/widgets/BuyButton.dart';
import 'package:beats/src/widgets/fondo_circular.dart';
import 'package:beats/src/widgets/CustomAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        FondoCicular(),
        SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[CustomAppBar(), _Header()],
            ),
          ),
        ),
        BuyButton(),
      ],



    ));
  }
}

class _Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 45.0),
          Text('Colecta',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0)),
          Text('App ',
              style: TextStyle(fontWeight: FontWeight.w100, fontSize: 18.0))
        ],
      ),
    );
  }
}
