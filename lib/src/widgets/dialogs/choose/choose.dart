///
/// venosyd © 2016-2020. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.dialogs.choose;

import 'package:angular/angular.dart';

import '../../../css/css.dart';

@Component(
  selector: 'openux-choosedialog',
  templateUrl: 'choose.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'choose.css',
  ],
  directives: [coreDirectives],
)
class ChooseDialog {
  ///
  ChooseDialog() {
    action = hide;
  }

  ///
  List<String> items = [];

  ///
  Function action;

  ///
  Function cancel = () {};

  ///
  bool visible = false;

  ///
  void hide() => visible = false;

  ///
  void show(List<String> items) {
    this.items = items;
    visible = true;
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
