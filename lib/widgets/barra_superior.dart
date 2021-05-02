import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portafolio/pages/certificados.dart';
import 'package:portafolio/pages/contacto.dart';
import 'package:portafolio/pages/portafolio.dart';
import 'package:portafolio/pages/skills.dart';

class BarraSuperior extends StatelessWidget {
  final bool botonRegreso;
  final bool portafolios;
  final bool certificados;
  final bool contacto;
  final bool skills;

  BarraSuperior(
      {this.botonRegreso = false,
      this.portafolios = true,
      this.certificados = true,
      this.contacto = true,
      this.skills = true});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      height: 60,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          this.botonRegreso
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        }),
                  ],
                )
              : Row(),
          Expanded(
            child: Container(
              //color: Colors.red,
              alignment: AlignmentDirectional.bottomEnd,
              child: ListView(
                reverse: true,
                //physics: ScrollPhysics(),
                scrollDirection: Axis.horizontal,
                //mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: this.portafolios
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Portafolio()),
                              );
                            }
                          : () {},
                      child: Text("Portafolio")),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: this.skills
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Skills()),
                              );
                            }
                          : () {},
                      child: Text("Skills")),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: this.certificados
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Certificados()),
                              );
                            }
                          : () {},
                      child: Text("Certificados")),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: this.contacto
                          ? () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Contacto()),
                              );
                            }
                          : () {},
                      child: Text("Contacto")),
                  SizedBox(
                    width: 20,
                  )
                ].reversed.toList(),
              ),
            ),
          )
        ],
      ),
    );
  }
}
