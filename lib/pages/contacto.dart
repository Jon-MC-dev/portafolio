import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portafolio/widgets/imagen_fondo_widget.dart';
import 'package:portafolio/widgets/barra_superior.dart';
import 'package:toast/toast.dart';

class Contacto extends StatelessWidget {
  final String _telefono = '771 185 5976';
  final String _correo = 'jony.hackmc@gmail.com';
  final String _linkedin =
      'linkedin.com/in/jonathan-morales-centeno-0089aa1a8/';
  final String _github = 'https://github.com/Jon-MC-dev';
  final key = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return ImagenFondoWidget(
      widgets: [
        BarraSuperior(
          botonRegreso: true,
          contacto: false,
        ),
        Container(
            color: Colors.deepPurpleAccent[300],
            constraints: BoxConstraints.expand(),
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Contacto",
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  TextButton.icon(
                      onPressed: () {
                        _mostrarMensaje(context, _telefono);
                      },
                      icon: Icon(Icons.phone_android),
                      label: Text('Telefono: $_telefono')),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton.icon(
                      onPressed: () {
                        _mostrarMensaje(context, _correo);
                      },
                      icon: Icon(Icons.email),
                      label: Text('Correo: $_correo')),
                  SizedBox(
                    height: 20,
                  ),
                  Flexible(
                      child: TextButton.icon(
                          //style: ButtonStyle(textStyle: TextStyle()),
                          onPressed: () {
                            _mostrarMensaje(context, _linkedin);
                          },
                          icon: Icon(Icons.my_library_books_outlined),
                          label: Text(
                            'Linkedin: ${_linkedin.substring(0, 25)}',
                            overflow: TextOverflow.clip,
                            maxLines: 3,
                          ))),
                  SizedBox(
                    height: 20,
                  ),
                  TextButton.icon(
                      onPressed: () {
                        _mostrarMensaje(context, _github);
                      },
                      icon: Icon(Icons.gif),
                      label: Text('Github: $_github')),
                ]))
      ],
    );
  }

  void _mostrarMensaje(BuildContext context, String texto) {
    Clipboard.setData(new ClipboardData(text: texto));
    Toast.show("Copiado al portapapeles", context,
        duration: Toast.LENGTH_SHORT, gravity: Toast.TOP);
  }
}
