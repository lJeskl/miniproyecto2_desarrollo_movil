import 'package:flutter/material.dart';

import 'package:amercia_precolombina/src/providers/menu_provider.dart';

class IncasUbicacionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ubicacion'),),
      body: _cardList());
  }

  Widget _cardList() {
    return FutureBuilder(
      future: cardProviderUbicacionIncas.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _cardItem(snapshot.data),
        );
      },
    );
  }


List<Widget> _cardItem(List<dynamic> data) {
    final List<Widget> info = [];
    data.forEach((element) {
      final widgetTemp = Card(
        elevation: 10.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        child: Column(
          children: [
            ListTile(
              title: Text(element['titulo']),
              contentPadding: EdgeInsets.all(10.0),
              subtitle: Text(element['texto']),
            ),
            FadeInImage(
                image: NetworkImage(element['imagen']),
                placeholder: AssetImage('assets/loading.gif'),
                fadeInDuration: Duration(milliseconds: 100),
                height: 300.0,
                width: 360.0,
                fit: BoxFit.contain),
          ],
        ),
      );
      info
        ..add(widgetTemp)
        ..add(SizedBox(
          height: 20.0,
        ));
    });
    return info;
  }

}