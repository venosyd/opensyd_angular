///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.inserts.input;

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-input',
  templateUrl: 'input.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'input.css',
  ],
  directives: [
    coreDirectives,
    formDirectives,
  ],
)
class InputDialog {
  ///
  InputDialog() {
    action = hide;
  }

  ///
  String hint = 'digite aqui';

  ///
  Function action;

  ///
  bool visible = false;

  ///
  String value;

  ///
  void show() {
    value = '';
    visible = true;
  }

  ///
  void hide() => visible = false;

  ///
  void showMessage(String hint) {
    this.hint = hint;
    show();
  }

  ///
  void ok() {
    hide();
    action(value);
  }
}
