///
/// venosyd © 2016-2020. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.inserts.report;

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-report',
  templateUrl: 'report.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'report.css',
  ],
  directives: [
    coreDirectives,
    formDirectives,
  ],
)
class ReportDialog {
  ///
  ReportDialog() {
    action = hide;
  }

  ///
  String hint = 'Email';

  ///
  Function action;

  ///
  bool visible = false;

  ///
  String credential;

  ///
  String description;

  ///
  void show() {
    credential = '';
    description = '';
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
    action(credential, description);
  }
}
