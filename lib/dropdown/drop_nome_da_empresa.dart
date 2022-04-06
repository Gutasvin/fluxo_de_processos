import 'package:flutter/material.Dart';
import 'package:fluxo_de_processos/controller/variaveis_observavel.dart';

import '../package_dropdown.dart/awesome_dropdown.dart';

class Nome_da_empresa extends StatefulWidget {
  const Nome_da_empresa({Key? key}) : super(key: key);

  @override
  State<Nome_da_empresa> createState() => _nome_da_empresaState();
}

class _nome_da_empresaState extends State<Nome_da_empresa> {
  final controller = Variaveis();

  final nomeDaEmpresa = ["R2DBUZZ", "testando", "testando2"];
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
        valueListenable: controller.dropValue,
        builder: (_, value, __) {
          return Column(
            children: [
              Container(
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
                      hint: Text("Nome da Empresa"),
                      borderRadius: BorderRadius.circular(20),
                      value: (value.isEmpty) ? null : value,
                      onChanged: controller.onChanged,
                      items: nomeDaEmpresa
                          .map(
                            (op) => DropdownMenuItem(
                              value: op,
                              child: Text(op),
                            ),
                          )
                          .toList()),
                ),
              ),
            ],
          );
        });
  }
}
