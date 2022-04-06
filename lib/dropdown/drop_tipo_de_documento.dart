import 'package:flutter/material.Dart';
import 'package:fluxo_de_processos/main.dart';

import '../widgets/principal.dart';

class tipo_de_documento extends StatefulWidget {
  const tipo_de_documento({Key? key}) : super(key: key);

  @override
  State<tipo_de_documento> createState() => _tipo_de_documentoState();
}

class _tipo_de_documentoState extends State<tipo_de_documento> {
  bool isExpanded = false;
  final dropValue = ValueNotifier('');
  final unidadeDaEmpresa = ["RD_001", "Tursan_010", "Tursan_020"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            ValueListenableBuilder(
                valueListenable: dropValue,
                builder: (BuildContext context, String value, _) {
                  return Container(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      width: MediaQuery.of(context).size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(60),
                        border: Border.all(
                            color: Colors.black,
                            style: BorderStyle.solid,
                            width: 1),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          iconSize: 35,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.black,
                          ),
                          hint: Text("Selecionar Tipo de Documento"),
                          borderRadius: BorderRadius.circular(20),
                          value: (value.isEmpty) ? null : value,
                          onChanged: (escolha) {
                            dropValue.value = escolha.toString();
                            setState(() {
                              isExpanded = !isExpanded;
                            });
                          },
                          items: unidadeDaEmpresa
                              .map(
                                (op) => DropdownMenuItem(
                                  value: op,
                                  child: Container(child: Text(op)),
                                ),
                              )
                              .toList(),
                        ),
                      ));
                }),
            isExpanded ? HomePage() : Container(),
          ],
        ),
      ),
    );
  }
}















/*import 'package:awesome_dropdown/awesome_dropdown.dart';
import 'package:flutter/material.Dart';

import '../controller/variaveis_observavel.dart';
import '../widgets/principal.dart';

class tipo_de_documento extends StatefulWidget {
  const tipo_de_documento({Key? key}) : super(key: key);

  @override
  State<tipo_de_documento> createState() => _tipo_de_documentoState();
}

class _tipo_de_documentoState extends State<tipo_de_documento> {
  final controller = Variaveis();
  final tipo_de_documentos = ["Trancado", "Trancado", "Trancado"];
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AwesomeDropDown(
              selectedItem: "Tipo de Documento",
              dropDownList: tipo_de_documentos,
              onDropDownItemClick: (isExpanded) {
                setState(() {
                  isExpanded = !isExpanded;
                }); 
              }),
          isExpanded ? HomePage() : Container(),
        ],
      ),
    );
  }
}*/

