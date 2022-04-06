import 'package:flutter/material.Dart';

class Variaveis {
  ValueNotifier<String> dropValue = ValueNotifier<String>('');
  ValueNotifier<bool> isVisi = ValueNotifier<bool>(false);

  onChanged(String? value) {
    dropValue.value = value!;
    print(dropValue.value);
  }

  click() {
    isVisi.value = !isVisi.value;
  }
}
