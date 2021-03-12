///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.loadings.miniloading;

import 'package:angular/angular.dart';

import '../../../css/css.dart';

@Component(
    selector: 'openux-miniloading',
    templateUrl: 'miniloading.html',
    styleUrls: [
      CSS_COLORS,
      CSS_ELEMENTS,
      CSS_SIZES,
      '../../widget.css',
      'miniloading.css'
    ],
    directives: [
      coreDirectives
    ])
class MiniLoading {
  ///
  bool visible = false;

  ///
  void show() => visible = true;

  ///
  void hide() => visible = false;
}
