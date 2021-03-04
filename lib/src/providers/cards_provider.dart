import 'dart:convert';
import 'package:flutter/services.dart' show rootBundle;

class _Tema1Provider {
  List<dynamic> opciones = [];

  _Tema1Provider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async{
    final resp = await rootBundle.loadString('data/cards_opts.json');
      Map dataMap = json.decode(resp);
      print(dataMap['tema1']);
      opciones = dataMap['tema1'];
      return opciones;
  } 
}
final page1Provider = new _Tema1Provider();

class _Tema2Provider {
  List<dynamic> opciones = [];

  _Tema2Provider() {
    cargarData();
  }

  Future<List<dynamic>> cargarData() async{
    final resp = await rootBundle.loadString('data/cards_opts.json');
      Map dataMap = json.decode(resp);
      print(dataMap['tema2']);
      opciones = dataMap['tema2'];
      return opciones;
  } 
}
final page2Provider = new _Tema2Provider();