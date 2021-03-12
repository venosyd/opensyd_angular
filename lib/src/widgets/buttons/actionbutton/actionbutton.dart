///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.buttons.actionbutton;

import 'package:angular/angular.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-button',
  templateUrl: 'actionbutton.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'actionbutton.css',
  ],
  directives: [coreDirectives],
)
class ActionButton {
  ///
  ActionButton();

  @Input()
  String text = '';

  @Input()
  Function action = () {};

  @Input()
  bool visible = true;

  @Input()
  String color = 'blue';

  @Input()
  String position = 'left';

  @Input()
  String icon = 'img/ic_level.svg';

  @Input()
  bool onlyicon = false;

  @Input()
  bool onlytext = false;

  @Input()
  bool mediumsize = false;

  @Input()
  bool bigsize = false;

  String get size => onlyicon
      ? '36px'
      : (onlytext
          ? (bigsize ? '200px' : '72px')
          : (mediumsize ? '85px' : (bigsize ? '200px' : '130px')));
}
