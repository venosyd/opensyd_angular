///
/// venosyd © 2016-2020. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.loadings.loading;

import 'package:angular/angular.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-loading',
  templateUrl: 'loading.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'loading.css',
  ],
  directives: [coreDirectives],
)
class Loading {
  ///
  bool visible = false;

  @Input()
  String message = '';

  ///
  void show() => visible = true;

  ///
  void hide() => visible = false;
}
