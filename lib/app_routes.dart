import 'package:flutter/material.dart';

import 'app/Modules/Index/screens/detailNote/detail_screen.dart';
import 'app/Modules/Index/screens/index/index_screen.dart';

const kMainRoute = '/';
const kDetailRoute = '/detail';

final Map<String, WidgetBuilder> kRoutes = {
  kMainRoute: (_) => IndexScreen(),
};

onGenerateRoute(settings) {
  if (settings.name != null) {
    return MaterialPageRoute(builder: (kRoutes[settings.name]!));
  } else if (settings.name == kDetailRoute) {
    return MaterialPageRoute(builder: (_) => DetailsScreen());
  }
}
