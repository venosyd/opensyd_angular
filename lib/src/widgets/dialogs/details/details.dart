///
/// venosyd © 2016-2020. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.dialogs.details;

import 'package:angular/angular.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-detailsdialog',
  templateUrl: 'details.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'details.css',
  ],
  directives: [coreDirectives],
)
class DetailsDialog {
  ///
  DetailsDialog() {
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
