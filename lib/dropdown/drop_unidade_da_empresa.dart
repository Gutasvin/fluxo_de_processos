import 'package:flutter/material.Dart';

import '../controller/variaveis_observavel.dart';

class Unidade_da_empresa extends StatefulWidget {
  const Unidade_da_empresa({Key? key}) : super(key: key);

  @override
  State<Unidade_da_empresa> createState() => _Unidade_da_empresaState();
}

class _Unidade_da_empresaState extends State<Unidade_da_empresa> {
  final controller = Variaveis();
  final unidadeDaEmpresa = ["Trancado"];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: controller.dropValue,
        builder: (BuildContext context, String value, _) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(60),
              border: Border.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                  iconSize: 35,
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  hint: Text("Unidade da Empresa"),
                  borderRadius: BorderRadius.circular(20),
                  value: (value.isEmpty) ? null : value,
                  onChanged: controller.onChanged,
                  items: unidadeDaEmpresa
                      .map(
                        (op) => DropdownMenuItem(
                          value: op,
                          child: Text(op),
                        ),
                      )
                      .toList()),
            ),
          );
        });
  }
}
