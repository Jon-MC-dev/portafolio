import 'dart:ui';

import 'package:flutter/material.dart';

class ImagenFondoWidget extends StatelessWidget {
  final List<Widget> widgets;

  ImagenFondoWidget({this.widgets});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('lib/img/Fondo.png'), fit: BoxFit.cover),
        ),
        //color: Colors.blue[100],
        child: Stack(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3.0, sigmaY: 3.0),
              child: Container(
                decoration:
                    new BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
            ...widgets
          ],
        ),
      ),
    );
  }
}
