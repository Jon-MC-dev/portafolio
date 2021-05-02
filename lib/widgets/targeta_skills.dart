import 'package:flutter/material.dart';

class TargetaSkills extends StatelessWidget {
  final String rutaImagen;
  final String titulo;

  TargetaSkills({this.rutaImagen, this.titulo});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      //color: Colors.red,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            this.titulo,
            style: TextStyle(color: Colors.white, fontSize: 15.0),
          ),
          Container(
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  this.rutaImagen,
                  width: 120,
                )),
          )
        ],
      ),
    );
  }
}
