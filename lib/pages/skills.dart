import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio/widgets/imagen_fondo_widget.dart';
import 'package:portafolio/widgets/targeta_skills.dart';
import 'package:portafolio/widgets/barra_superior.dart';

class Skills extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ImagenFondoWidget(
      widgets: [
        BarraSuperior(
          botonRegreso: true,
          skills: false,
        ),
        Container(
          color: Colors.deepPurpleAccent[300],
          constraints: BoxConstraints.expand(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 50),
              Text(
                "Skills",
                style: TextStyle(color: Colors.white, fontSize: 25.0),
              ),
              SizedBox(height: 50),
              Expanded(
                child: ListView(
                  children: [
                    _crearScrollHorizontal([
                      TargetaSkills(
                        titulo: 'Java',
                        rutaImagen: 'lib/img/java-skills.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'JavaScript\n',
                        rutaImagen: 'lib/img/JavaScript.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'PHP\n',
                        rutaImagen: 'lib/img/Php.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'Python\n',
                        rutaImagen: 'lib/img/Pthon.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'NodeJS\n',
                        rutaImagen: 'lib/img/NodeJS.png',
                      )
                    ]),
                    SizedBox(
                      height: 60.0,
                    ),
                    _crearScrollHorizontal([
                      TargetaSkills(
                        titulo: 'JQuery\n',
                        rutaImagen: 'lib/img/JQuery.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'CSS\n',
                        rutaImagen: 'lib/img/Css.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'HTML\n',
                        rutaImagen: 'lib/img/html.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'Bootstrap\n',
                        rutaImagen: 'lib/img/Bootstrap.png',
                      )
                    ]),
                    SizedBox(
                      height: 60.0,
                    ),
                    _crearScrollHorizontal([
                      TargetaSkills(
                        titulo: 'MySql\n',
                        rutaImagen: 'lib/img/mysql.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'Sql Server\n',
                        rutaImagen: 'lib/img/sqlServer.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                      TargetaSkills(
                        titulo: 'Mongo DB\n',
                        rutaImagen: 'lib/img/mongoDB.png',
                      ),
                      SizedBox(
                        width: 30.0,
                      ),
                    ]),
                    SizedBox(
                      height: 60.0,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Widget _crearScrollHorizontal(List<Widget> lista) {
    return Container(
        alignment: Alignment.center,
        //color: Colors.blue,
        padding: EdgeInsets.symmetric(vertical: 15),
        width: Get.width,
        height: Get.height * 0.3,
        child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: lista));
  }
}
