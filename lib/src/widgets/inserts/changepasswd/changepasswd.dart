///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.inserts.changepasswd;

import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../../../css/css.dart';
import '../../dialogs/dialog/dialog.dart';

@Component(
  selector: 'openux-changepasswd',
  templateUrl: 'changepasswd.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'changepasswd.css'
  ],
  directives: [
    coreDirectives,
    formDirectives,
    Dialog,
  ],
)
class ChangePasswdDialog {
  ///
  ChangePasswdDialog() {
    action = hide;
  }

  @ViewChild('dialog')
  Dialog dialog;

  ///
  Function action;

  ///
  bool visible = false;

  ///
  String oldpasswd;

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
    if (oldpasswd == null || oldpasswd.isEmpty) {
      hide();
      dialog.showMessage('Você precisa informar sua senha antiga');
      dialog.action = show;
      return;
    }

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
    action(oldpasswd, newpasswd);
  }
}
