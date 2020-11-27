///
/// venosyd © 2016-2020. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.dialogs.dialog;

import 'package:angular/angular.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-dialog',
  templateUrl: 'dialog.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'dialog.css',
  ],
  directives: [coreDirectives],
)
class Dialog {
  ///
  Dialog() {
    action = hide;
  }

  ///
  String message = '';

  ///
  Function action;

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
}
