import 'package:flutter/material.dart';

//Propias
import 'package:amercia_precolombina/src/pages/mayas/pagina_mayas.dart';
import 'package:amercia_precolombina/src/pages/mayas/ubicacion_mayas.dart';
import 'package:amercia_precolombina/src/pages/mayas/mitologia_mayas.dart';
import 'package:amercia_precolombina/src/pages/mayas/estructura_mayas.dart';

import 'package:amercia_precolombina/src/pages/pagina_inicio.dart';
import 'package:amercia_precolombina/src/pages/incas/pagina_incas.dart';
import 'package:amercia_precolombina/src/pages/incas/ubicacion_incas.dart';
import 'package:amercia_precolombina/src/pages/incas/estructura_incas.dart';
import 'package:amercia_precolombina/src/pages/incas/mitologia_incas.dart';

import 'package:amercia_precolombina/src/pages/aztecas/pagina_aztecas.dart';
import 'package:amercia_precolombina/src/pages/aztecas/ubicacion_aztecas.dart';
import 'package:amercia_precolombina/src/pages/aztecas/estructura_aztecas.dart';
import 'package:amercia_precolombina/src/pages/aztecas/mitologia_aztecas.dart';

Map<String, WidgetBuilder> getAppRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'incas': (BuildContext context) => IncasPage(),
    'incasUbicacion': (BuildContext context) => IncasUbicacionPage(),
    'incasEstructura': (BuildContext context) => IncasEstructuraPage(),
    'incasMitologia': (BuildContext context) => IncasMitologiaPage(),

    'mayas': (BuildContext context) => MayasPage(),
    'mayasUbicacion': (BuildContext context) => MayasUbicacionPage(),
    'mayasEstructura': (BuildContext context) => MayasEstructuraPage(),
    'mayasMitologia': (BuildContext context) => MayasMitologiaPage(),

    'aztecas': (BuildContext context) => AztecasPage(),
    'aztecasUbicacion': (BuildContext context) => AztecasUbicacionPage(),
    'aztecasEstructura': (BuildContext context) => AztecasEstructuraPage(),
    'aztecasMitologia': (BuildContext context) => AztecasMitologiaPage(),
    //'aztecasReto': (BuildContext context) => AztecasRetoPage(),
  };
}
