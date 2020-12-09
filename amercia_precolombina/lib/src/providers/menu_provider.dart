import 'dart:convert';

import 'package:flutter/services.dart';

class _MenuProviderHome {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/menu.json');

    Map dataJson = json.decode(resp);
    options = dataJson['rutas'];

    return options;
  }
}

class _MenuProviderIncas {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/incas.json');

    Map dataJson = json.decode(resp);
    options = dataJson['rutasIncas'];

    return options;
  }
}

class _CardProviderUbicacionIncas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/incas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['ubicacion'];

    return info;
  }
}

class _CardProviderEstructuraIncas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/incas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['estructura'];

    return info;
  }
}

class _CardProviderMitologiaIncas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/incas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['mitologia'];


    return info;
  }
}

class _MenuProviderMayas {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/mayas.json');

    Map dataJson = json.decode(resp);
    options = dataJson['rutasMayas'];

    return options;
  }
}

class _CardProviderUbicacionMayas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/mayas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['ubicacion'];

    return info;
  }
}

class _CardProviderEstructuraMayas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/mayas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['estructura'];

    return info;
  }
}

class _CardProviderMitologiaMayas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/mayas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['mitologia'];


    return info;
  }
}

class _MenuProviderAztecas {
  List<dynamic> options = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/aztecas.json');

    Map dataJson = json.decode(resp);

    options = dataJson['rutasAztecas'];

    return options;

  }
}

class _CardProviderUbicacionAztecas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/aztecas.json');

    Map dataJson = json.decode(resp);

    info = dataJson['ubicacion'];

    return info;
  }
}


class _CardProviderEstructuraAztecas {

  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/aztecas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['estructura'];

    return info;
  }
}

class _CardProviderVestimentaAztecas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/aztecas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['vestimenta'];

    return info;
  }
}

class _CardProviderMitologiaAztecas {
  List<dynamic> info = [];

  Future<List<dynamic>> loadData() async {
    final resp = await rootBundle.loadString('data/aztecas.json');

    Map dataJson = json.decode(resp);
    info = dataJson['mitologia'];

    return info;
  }
}



class _CardProvider{
  List<dynamic> info = [];

  Future<List<dynamic>> loadData(String file, String data) async {
    final resp = await rootBundle.loadString(file);

    Map dataJson = json.decode(resp);
    info = dataJson[data];


    return info;
  }
}

final menuProviderHome = new _MenuProviderHome();

final menuProviderIncas=new _MenuProviderIncas();
final cardProviderEstructuraIncas=new _CardProviderEstructuraIncas();
final cardProviderUbicacionIncas = new _CardProviderUbicacionIncas();
final cardProviderMitologiaIncas = new _CardProviderMitologiaIncas();

final menuProviderMayas = new _MenuProviderMayas();


final cardProviderUbicacionMayas = new _CardProviderUbicacionMayas();
final cardProviderEstructuraMayas = new _CardProviderEstructuraMayas();
final cardProviderMitologiaMayas = new _CardProviderMitologiaMayas();

final menuProviderAztecas = new _MenuProviderAztecas();
final cardProviderUbicacionAztecas = new _CardProviderUbicacionAztecas();
final cardProviderEstructuraAztecas = new _CardProviderEstructuraAztecas();
final cardProviderVestimentaAztecas = new _CardProviderVestimentaAztecas();
final cardProviderMitologiaAztecas = new _CardProviderMitologiaAztecas();

final cardProvider = new _CardProvider();
