import 'package:flutter/material.dart';

import 'package:propio1/src/pages/alert_page.dart';
import 'package:propio1/src/pages/home_page.dart';
import 'package:propio1/src/pages/Page1_page.dart';
import 'package:propio1/src/pages/Page2_page.dart';


Map<String, WidgetBuilder>  getApplicationRoutes(){
  return <String, WidgetBuilder>{
        '/'      : (BuildContext context) => HomePage(),
        'alert'  : (BuildContext context) => AlertPage(),
        'cards1'  : (BuildContext context) => Tema1Page(),
        'cards2'  : (BuildContext context) => Tema2Page(),
  };
}