import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Botoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 55,
          height: 45,
          decoration: BoxDecoration(
              color: Color(0xFFF64846),
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            FontAwesomeIcons.trash,
            color: Colors.white,
            size: 20,
          ),
        ),
        SizedBox(
          width: 7,
        ),
        Container(
          width: 55,
          height: 45,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 27, 205, 89),
              borderRadius: BorderRadius.circular(30)),
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.white,
            size: 20,
          ),
        ),
      ],
    );
  }
}
