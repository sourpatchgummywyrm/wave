import 'package:flutter/material.dart';
Color first = hexToColor("#008B8B");
Color second = hexToColor("#0D6DB2");
LinearGradient appGradient = new LinearGradient(colors: [first, second]);
Color hexToColor(String code) {
  return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}