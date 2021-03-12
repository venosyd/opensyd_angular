///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>
///
library opensyd.angular.providers.position;

import 'dart:async';

import 'package:universal_html/html.dart' as html;

///
/// utilidades para a posicao do usuario
///
class PositionController {
  ///
  List<double> _selectedposition;

  ///
  Future<List<double>> get selectedposition async =>
      (_selectedposition == null) ? await getUserPosition() : _selectedposition;

  ///
  set selectedposition(dynamic position) =>
      _selectedposition = position as List<double>;

  ///
  Future<List<double>> getUserPosition() async {
    try {
      final geoposition =
          await html.window.navigator.geolocation.getCurrentPosition();
      final latitude = geoposition.coords.latitude as double;
      final longitude = geoposition.coords.longitude as double;

      return [latitude, longitude];
    } catch (_, __) {
      return [-8.063094, -34.871282]; // Marco Zero - Recife, PE
    }
  }
}
