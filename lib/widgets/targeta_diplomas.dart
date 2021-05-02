import 'package:flutter/material.dart';

class TargetaDiploma extends StatelessWidget {
  final String rutaImagen;
  final String titulo;

  TargetaDiploma({this.rutaImagen, this.titulo});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          this.titulo,
          style: TextStyle(color: Colors.white, fontSize: 15.0),
        ),
        ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              this.rutaImagen,
              width: 280,
            ))
      ],
    );
  }
}
