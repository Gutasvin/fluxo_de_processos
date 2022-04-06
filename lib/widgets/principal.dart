import 'package:flutter/material.Dart';

import '../dropdown/drop_cnpj_da_empresa.dart';
import '../dropdown/drop_nome_da_empresa.dart';
import '../dropdown/drop_unidade_da_empresa.dart';
import 'opcoes_avancadas.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            SizedBox(
              height: 12,
            ),
            Nome_da_empresa(),
            SizedBox(
              height: 12,
            ),
            Unidade_da_empresa(),
            SizedBox(
              height: 12,
            ),
            cnpj_da_empresa(),
          ],
        ),
        opc_avancadas(),
      ],
    );
  }
}
