import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color bluegray50 = fromHex('#ebeef5');

  static Color greenA70021 = fromHex('#2112aa53');

  static Color red500 = fromHex('#f14336');

  static Color black9003f = fromHex('#3f000000');

  static Color gray50 = fromHex('#f6fdfd');

  static Color red50 = fromHex('#fef2e9');

  static Color greenA700 = fromHex('#13aa54');

  static Color orange40075 = fromHex('#75ff9126');

  static Color teal600 = fromHex('#008080');

  static Color yellow800 = fromHex('#fa971d');

  static Color black900 = fromHex('#000000');

  static Color bluegray9003f = fromHex('#3f323539');

  static Color gray700 = fromHex('#595555');

  static Color gray502 = fromHex('#a7a3a3');

  static Color gray400 = fromHex('#c4c4c4');

  static Color gray500 = fromHex('#a8a8a8');

  static Color gray401 = fromHex('#b4bbbd');

  static Color gray701 = fromHex('#606266');

  static Color gray503 = fromHex('#8f9192');

  static Color amber600 = fromHex('#fbbb00');

  static Color bluegray100 = fromHex('#c8d1d7');

  static Color orange400 = fromHex('#ff9126');

  static Color orange40019 = fromHex('#19ff9125');

  static Color gray200 = fromHex('#f0f0f0');

  static Color black9000c = fromHex('#0c000000');

  static Color gray300 = fromHex('#e3e2e1');

  static Color gray100 = fromHex('#f5f5f5');

  static Color bluegray900 = fromHex('#303133');

  static Color bluegray700 = fromHex('#545151');

  static Color orange40021 = fromHex('#21ff9125');

  static Color bluegray401 = fromHex('#888888');

  static Color greenA7004c = fromHex('#4c13aa54');

  static Color bluegray103 = fromHex('#d9dada');

  static Color bluegray400 = fromHex('#8b8b8b');

  static Color bluegray102 = fromHex('#d9d9d9');

  static Color bluegray101 = fromHex('#c8d0d6');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
   static Color black9007f = fromHex('#7f000000');


  static Color lightBlueA200 = fromHex('#41d1ff');

  static Color lightGreenA700 = fromHex('#49e114');

  static Color red800 = fromHex('#ce2121');


  static Color greenA100 = fromHex('#b6f5d2');

  static Color green600 = fromHex('#34a853');



  static Color cyan700A0 = fromHex('#a0009ba0');

 

  static Color whiteA70030 = fromHex('#30ffffff');


  static Color cyan70038 = fromHex('#38009ba0');

  static Color gray40035 = fromHex('#35c4c4c4');

  static Color yellow100 = fromHex('#ffeec5');

  static Color gray501 = fromHex('#a8a8a8');

  static Color gray600 = fromHex('#847b7b');



  static Color gray403 = fromHex('#c0c4cc');

  static Color gray601 = fromHex('#857c7c');



  static Color gray703 = fromHex('#595b5e');

  static Color lime700 = fromHex('#c79822');


  static Color gray404 = fromHex('#bbbcbe');

  static Color redA100 = fromHex('#f28787');

  static Color gray702 = fromHex('#5e6064');

  static Color gray405 = fromHex('#b9b6b6');

 

  static Color teal50 = fromHex('#d2e9e9');



  static Color bluegray800 = fromHex('#2d4356');



  static Color bluegray402 = fromHex('#8b8d90');

  static Color cyan70049 = fromHex('#49009ba0');


  static Color bluegray901 = fromHex('#2f3030');

 
}
