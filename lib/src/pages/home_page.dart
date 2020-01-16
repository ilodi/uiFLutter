import 'package:flutter/material.dart';
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
          child: SingleChildScrollView(child: Column(children: <Widget>[CustomAppBar()],),),
        )
      ],
    ));
  }
}

