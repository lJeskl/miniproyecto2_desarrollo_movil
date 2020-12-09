import 'package:flutter/material.dart';

final _icons = <String, IconData>{
  'folder_open': Icons.folder_open,
  'map': Icons.map,
  'mediation': Icons.mediation,
  'self improvement': Icons.self_improvement,
  'sports_esports': Icons.sports_esports,
  'group':Icons.group,
};

final _symbols = <String, CircleAvatar>{
  'incas_symbol': CircleAvatar(
    backgroundImage: NetworkImage(
        'https://i.ytimg.com/vi/tbDN4tEyM6Q/maxresdefault.jpg'),
  ),
  'mayas_symbol': CircleAvatar(
    backgroundImage: NetworkImage(
        'https://sites.google.com/site/eltiempodemexico1492/_/rsrc/1460773304840/civilizaciones-desarrolladas/mayas/maya-indians0.gif'),
  ),
  'aztecas_symbol': CircleAvatar(
    backgroundImage: NetworkImage(
        'https://www.chicanxdeaztlan.org/wp-content/uploads/2019/03/0030177881.jpg'),
  ),
};

Icon getIcon(String nameIcon) {
  return Icon(
    _icons[nameIcon],
  );
}

CircleAvatar getSymbol(String nameSymbol) {
  return _symbols[nameSymbol];
}

Icon getIconMayas(String nameIcon) {
  return Icon(
    _icons[nameIcon],
  );
}
