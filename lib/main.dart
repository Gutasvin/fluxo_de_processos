import "package:flutter/material.Dart";

import 'dropdown/drop_tipo_de_documento.dart';

void main() {
  runApp(ControlleApp());
}

class ControlleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My App",
      home: tipo_de_documento(),
    );
  }
}
