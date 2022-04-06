import 'package:flutter/material.Dart';
import 'package:fluxo_de_processos/dropdown/drop_tipos_de_processamentos_selecionados.dart';

import '../dropdown/drop_tipos_arquivos_selecionados.dart';
import 'botoes.dart';

class opc_avancadas extends StatefulWidget {
  const opc_avancadas({Key? key}) : super(key: key);

  @override
  State<opc_avancadas> createState() => _opc_avancadasState();
}

class _opc_avancadasState extends State<opc_avancadas> {
  bool visibility_controller = false;
  bool visibility_tipo_de_arquivo = false;
  bool processamento = false;

  void _changed(bool visibility, String field) {
    setState(() {
      if (field == "visibility_controller") {
        visibility_controller = visibility;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextButton(
              onPressed: () {
                visibility_controller
                    ? _changed(false, "visibility_controller")
                    : _changed(true, "visibility_controller");
              },
              child: Container(
                child: Text(
                  "Opções Avançadas",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.w400,
                    color:
                        visibility_controller ? Colors.grey[400] : Colors.blue,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 12.0),
        Container(
            margin: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: <Widget>[
                visibility_controller
                    ? Column(
                        children: [
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    labelText: "ID Doc",
                                    filled: true,
                                    fillColor: const Color(0xFFF1F5F4),
                                    floatingLabelStyle: const TextStyle(
                                        color: Color(0xFF0000FF)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(60),
                                        borderSide: BorderSide(
                                          color: const Color(0xFF0000FF)
                                              .withOpacity(0.5),
                                          width: 2,
                                        )),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(60),
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),

                          SizedBox(height: 12.0),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    contentPadding:
                                        EdgeInsets.symmetric(horizontal: 20),
                                    labelText: "Nome do Arquivo",
                                    filled: true,
                                    fillColor: const Color(0xFFF1F5F4),
                                    floatingLabelStyle: const TextStyle(
                                        color: Color(0xFF0000FF)),
                                    focusedBorder: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(60),
                                        borderSide: BorderSide(
                                          color: const Color(0xFF0000FF)
                                              .withOpacity(0.5),
                                          width: 2,
                                        )),
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(60),
                                      borderSide: const BorderSide(
                                        width: 1,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                          //TIPO DE ARQUIVO
                          SizedBox(
                            height: 12,
                          ),
                          tipos_de_arquivos_selecionados(),
                          //PROCESSAMENTO
                          SizedBox(
                            height: 12,
                          ),
                          tipos_de_processo_selecionados()
                        ],
                      )
                    : Container(),
                SizedBox(
                  height: 12,
                ),
                Botoes(),
              ],
            )),
      ],
    );
  }
}
