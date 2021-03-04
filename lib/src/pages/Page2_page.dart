import 'package:flutter/material.dart';
import 'package:propio1/src/providers/cards_provider.dart';

class Tema2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logic'),
      ),
      body: _cards()
    );
  }

  Widget _cards() {
    return FutureBuilder(
      future: page2Provider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapShot){
        return ListView(
          children: _cardItems(snapShot.data, context),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        );
      },
    );
  }

  List<Widget> _cardItems(List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];
    data.forEach( (opt) {

      final widgetTemp = Card(
        elevation: 10.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        child: Column(
          children: <Widget>[
            ListTile(
              leading: FadeInImage( 
                image: NetworkImage(opt['imagen']), //obtener imagen de json
                placeholder: AssetImage('assets/jar-loading.gif'),
                fadeInDuration: Duration(milliseconds: 200),
                // height: 100.0,
                fit: BoxFit.cover,
              ),
              title: Text(opt['titulo']), //obtener titulo de json
              subtitle: Text(opt['texto']), //obtener texto de json
            )
          ]
        )
      );

      opciones..add(widgetTemp)
              ..add(Divider());
    });
    return opciones;
  }
}