import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BuyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: <Widget>[
        Positioned(
          bottom: 0.0,
          right: 0.0,
          child: Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('Entrar',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0)),
                SizedBox(width: 5.0),
                Icon(
                  FontAwesomeIcons.arrowRight,
                  color: Colors.white,
                   size: 13.0,
                ),
              ],
            ),
            width: size.width * 0.4,
            height: 44.0,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.only(topLeft: Radius.circular(34.0))),
          ),
        )
      ],
    );
  }
}
