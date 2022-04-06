import 'package:flutter/material.Dart';

import '../controller/variaveis_observavel.dart';

class cnpj_da_empresa extends StatefulWidget {
  const cnpj_da_empresa({Key? key}) : super(key: key);

  @override
  State<cnpj_da_empresa> createState() => _cnpj_da_empresaState();
}

class _cnpj_da_empresaState extends State<cnpj_da_empresa> {
  final cnpjDaEmpresa = ["123.456.789.00"];
  final controller = Variaveis();

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: controller.dropValue,
        builder: (BuildContext context, String value, _) {
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
                      hint: Text("CNPJ da Empresa"),
                      borderRadius: BorderRadius.circular(20),
                      value: (value.isEmpty) ? null : value,
                      onChanged: controller.onChanged,
                      items: cnpjDaEmpresa
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
