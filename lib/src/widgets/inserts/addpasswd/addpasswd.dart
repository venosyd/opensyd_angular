///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.inserts.addpasswd;

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../../../css/css.dart';
import '../../dialogs/dialog/dialog.dart';

@Component(
  selector: 'openux-addpasswd',
  templateUrl: 'addpasswd.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'addpasswd.css'
  ],
  directives: [
    coreDirectives,
    formDirectives,
    Dialog,
  ],
)
class AddPasswdDialog {
  ///
  AddPasswdDialog() {
    action = hide;
  }
  @ViewChild('dialog')
  Dialog dialog;

  ///
  Function action;

  ///
  bool visible = false;

  ///
  String newpasswd;

  ///
  String confirmnewpasswd;

  ///
  void show() => visible = true;

  ///
  void hide() => visible = false;

  ///
  void ok() {
    if ((newpasswd == null || newpasswd.isEmpty) ||
        (confirmnewpasswd == null || confirmnewpasswd.isEmpty)) {
      hide();
      dialog.showMessage('Você precisa informar sua senha nova');
      dialog.action = show;
      return;
    }

    if (newpasswd != confirmnewpasswd) {
      hide();
      dialog.showMessage('Nova senha e confirmação precisam ser iguais');
      dialog.action = show;
      return;
    }

    hide();
    action(newpasswd);
  }
}
