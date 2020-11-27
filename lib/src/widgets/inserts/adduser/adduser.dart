///
/// venosyd © 2016-2020. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.widgets.inserts.adduser;

import 'package:opensyd_dart/opensyd_dart.dart';
import 'package:angular/angular.dart';
import 'package:angular_forms/angular_forms.dart';

import '../../../css/css.dart';
import '../../dialogs/dialog/dialog.dart';

@Component(
  selector: 'openux-adduser',
  templateUrl: 'adduser.html',
  styleUrls: [
    CSS_COLORS,
    CSS_ELEMENTS,
    CSS_SIZES,
    '../../widget.css',
    'adduser.css'
  ],
  directives: [
    coreDirectives,
    formDirectives,
    Dialog,
  ],
)
class AddUserDialog {
  ///
  AddUserDialog() {
    action = hide;
  }

  @ViewChild('dialog')
  Dialog dialog;

  ///
  Function action;

  ///
  bool visible = false;

  ///
  String email;

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
    if (email == null || email.isEmpty || !Validate.validateEmail(email)) {
      hide();
      dialog.showMessage('Digite um email válido');
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
    action(email, newpasswd);
  }
}
