import 'package:flutter/material.dart';

final _icons = <String, IconData>{
 'anchor' : Icons.anchor,
 'audiotrack' : Icons.audiotrack,
 'error_outline' : Icons.error_outline,
};

Icon getIcon(String nombreIcono) {
  return Icon(
    _icons[nombreIcono],
    color: Colors.purple[900],
  );
}