import 'package:flutter/material.dart';
import 'package:portafolio/widgets/imagen_fondo_widget.dart';
import 'package:portafolio/widgets/targeta_proyectos.dart';
import 'package:portafolio/widgets/barra_superior.dart';

class Portafolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImagenFondoWidget(
      widgets: [
        BarraSuperior(
          botonRegreso: true,
          portafolios: false,
        ),
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Container(
            color: Colors.deepPurpleAccent[300],
            constraints: BoxConstraints.expand(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Proyectos",
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.only(
                        left: 20, right: 20, top: 20, bottom: 20),
                    children: [
                      constraints.maxWidth > 600
                          ? Padding(
                              padding: EdgeInsets.only(top: 25.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TargetaProyectos(
                                    titulo: 'Api en python y flask\n',
                                    rutaImagen: 'lib/img/Pthon.png',
                                    descripcion:
                                        'Api con python y flask que es consumida por el proyecto App admin store',
                                    urlProyecto:
                                        'https://github.com/Jon-MC-dev/api-con-python',
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  TargetaProyectos(
                                    titulo: 'App admin store\n',
                                    rutaImagen: 'lib/img/app-store.jpeg',
                                    descripcion:
                                        'Una app en flutter para admistrar una tienda online y fisica',
                                    urlProyecto:
                                        'https://github.com/Jon-MC-dev/app-admin-store',
                                  )
                                ],
                              ),
                            )
                          : Column(
                              children: [
                                TargetaProyectos(
                                  titulo: 'Api en python y flask\n',
                                  rutaImagen: 'lib/img/Pthon.png',
                                  descripcion:
                                      'Api con python y flask que es consumida por el proyecto App admin store',
                                  urlProyecto:
                                      'https://github.com/Jon-MC-dev/api-con-python',
                                ),
                                SizedBox(
                                  height: 30.0,
                                ),
                                TargetaProyectos(
                                  titulo: 'App admin store\n',
                                  rutaImagen: 'lib/img/app-store.jpeg',
                                  descripcion:
                                      'Una app en flutter para admistrar una tienda online y fisica',
                                  urlProyecto:
                                      'https://github.com/Jon-MC-dev/app-admin-store',
                                ),
                              ],
                            )
                    ],
                  ),
                )
              ],
            ),
          );
        })
      ],
    );
  }
}
