import 'package:flutter/material.dart';
import 'package:portafolio/widgets/imagen_fondo_widget.dart';
import 'package:portafolio/widgets/targeta_diplomas.dart';
import 'package:portafolio/widgets/barra_superior.dart';

class Certificados extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImagenFondoWidget(
      widgets: [
        BarraSuperior(
          botonRegreso: true,
          certificados: false,
        ),
        Container(
          //color: Colors.deepPurpleAccent[300],
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Certificados y Diplomas",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              Column(
                children: [
                  Container(
                    alignment: Alignment.center,
                    height: 280,
                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                    //color: Colors.red,
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      //mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TargetaDiploma(
                          titulo: 'Scrum Foundation Professional Certificate\n',
                          rutaImagen: 'lib/img/Scrum.png',
                        ),
                        SizedBox(
                          width: 30.0,
                          height: 30.0,
                        ),
                        TargetaDiploma(
                          titulo: 'Remote Work and Virtual Collaboration  \n',
                          rutaImagen: 'lib/img/RemoteWork.png',
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
