import 'package:flutter/material.dart';

//propias
import 'package:amercia_precolombina/src/providers/menu_provider.dart';
import 'package:amercia_precolombina/src/utils/icons_string_utils.dart';

class IncasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Los Incas'),
      ),
      body: _list(),
    );
  }

    Widget _list() {
    return FutureBuilder(
      future: menuProviderIncas.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listItems(snapshot.data, context),
        );
      },
    );
  }
    List<Widget> _listItems(List<dynamic> data, BuildContext context) {
    final List<Widget> options = [];
    data.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element['texto']),
        leading: getIcon(element['icon']),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          Navigator.pushNamed(context, element['ruta']);
        },
      );
      options..add(widgetTemp)..add(Divider());
    });
    return options;
  }
}
