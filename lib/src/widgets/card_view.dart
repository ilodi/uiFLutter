import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 460.0,
      child: PageView(
        controller: PageController(viewportFraction: 0.89),
        children: <Widget>[
        _Card(),
        _Card()
      ],),
    );
  }
}

class _Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: <Widget>[
          Row(
            children: <Widget>[
              _PrimeraDescripcion(),
              SizedBox(
                width: 55.0,
              ),
              _TarjetaDescripcion()
            ],
          ),
          Positioned(
            top: 90,
            left: 50,
            child: Image(
              image: AssetImage('assets/blue.png'),
              width: 160.0,
            ),
          )
        ],
      ),
    );
  }
}

class _TarjetaDescripcion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          width: size.width * 0.55,
          height: 340.0,
          color: Color(0xfff0B3FA2),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              RotatedBox(
                quarterTurns: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text('Warriors',
                        style: TextStyle(
                            color: Colors.white24,
                            fontSize: 30,
                            fontWeight: FontWeight.bold)),
                    Text('Royal Blue',
                        style: TextStyle(
                            color: Colors.white24,
                            fontSize: 30,
                            fontWeight: FontWeight.bold))
                  ],
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Text('Beats Studio3 Wirless',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Icon(
                      FontAwesomeIcons.heart,
                      size: 15.0,
                      color: Colors.white,
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Text('359.95',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                    width: 80.0,
                  ),
                  Container(
                    child: Center(
                      child: Text('Add to bag',
                          style: TextStyle(color: Colors.white)),
                    ),
                    width: 89.0,
                    height: 45.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(15.0))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _PrimeraDescripcion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(
              FontAwesomeIcons.batteryFull,
              size: 15.0,
            ),
            SizedBox(width: 15.0),
            Text(
              'Batterry',
              style: TextStyle(fontSize: 12.0),
            ),
            SizedBox(
              width: 10.0,
            ),
            Icon(
              FontAwesomeIcons.wifi,
              size: 15.0,
            ),
            SizedBox(width: 15.0),
            Text(
              'Wireless',
              style: TextStyle(fontSize: 12.0),
            )
          ],
        ),
      ),
    );
  }
}
