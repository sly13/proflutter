import 'package:flutter/material.dart';
import '../onGenerateRoute.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    var path = settings.name.split('/');

    if (path[1] == "details") {
      return new MaterialPageRoute(
        builder: (context) => new DetailScreen(id: int.parse(path[2])),
      );
    }

    return _errorRoute();
  }
}

Route<dynamic> _errorRoute() {
  return MaterialPageRoute(builder: (_) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Error'),
      ),
      body: Center(
        child: Text('ERROR'),
      ),
    );
  });
}
