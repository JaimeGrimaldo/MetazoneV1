import 'package:flutter/material.dart';

class NavBarrInfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          "Inicio",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        Text(
          "Crear Clase",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        ),
        Text(
          "Perfil",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18.0,
          ),
        )
      ],
    );
  }
}
