///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.dialogs.choice;

import 'package:angular/angular.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-choicedialog',
  templateUrl: 'choice.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'choice.css',
  ],
  directives: [coreDirectives],
)
class ChoiceDialog {
  ///
  ChoiceDialog() {
    action = hide;
  }

  ///
  String message = '';

  ///
  Function action;

  ///
  Function cancel = () {};

  ///
  bool visible = false;

  ///
  void show() => visible = true;

  ///
  void hide() => visible = false;

  ///
  void showMessage(String message) {
    this.message = message;
    show();
  }

  ///
  void ok() {
    hide();
    action();
  }

  ///
  void no() {
    hide();
    cancel();
  }
}
