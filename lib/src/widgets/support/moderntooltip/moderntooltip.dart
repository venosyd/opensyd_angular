///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.support.moderntooltip;

import 'package:angular/angular.dart';
import 'package:universal_html/html.dart' as html;

import '../../../css/css.dart';

@Component(
  selector: 'openux-tooltip',
  templateUrl: 'moderntooltip.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'moderntooltip.css',
  ],
  directives: [
    coreDirectives,
  ],
)
class ModernTooltip {
  ///
  bool visible = false;

  ///
  void hide() => visible = false;

  ///
  String text;

  ///
  String top = 'calc(100% - 48px)';

  ///
  String left = 'calc((100% - 300px) / 2)';

  ///
  void show(String text, [html.MouseEvent event]) {
    this.text = text;

    if (event != null) {
      final x = event.client.x as int;
      final y = event.client.y as int;

      top = 'calc(${y}px + 40px)';
      left = 'calc(${x}px - 50px)';
    } else {
      top = 'calc(100% - 48px)';
      left = 'calc((100% - 300px) / 2)';
    }

    visible = true;
  }

  ///
  void ok() => hide();
}
