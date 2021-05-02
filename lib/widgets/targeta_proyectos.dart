import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:url_launcher/url_launcher.dart';

class TargetaProyectos extends StatelessWidget {
  final String rutaImagen;
  final String titulo;
  final String descripcion;
  final String urlProyecto;

  TargetaProyectos(
      {this.rutaImagen, this.titulo, this.descripcion, this.urlProyecto = ''});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 380,
      width: 250,
      //color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onHover: !(this.urlProyecto == '')
                ? (hover) {
                    if (hover) {
                      Toast.show("Enlace disponible", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                  }
                : (hover) {
                    if (hover) {
                      Toast.show("Enlace NO disponible", context,
                          duration: Toast.LENGTH_SHORT, gravity: Toast.CENTER);
                    }
                  },
            onTap: this.urlProyecto == ''
                ? () {}
                : () => launch('https://github.com/Jon-MC-dev/api-con-python'),
            child: Text(
              this.titulo,
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                this.rutaImagen,
                width: 120,
              )),
          Text(
            '\n${this.descripcion}',
            maxLines: 5,
            textAlign: TextAlign.justify,
            //overflow: TextOverflow.fade,
            style: TextStyle(color: Colors.white, fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
