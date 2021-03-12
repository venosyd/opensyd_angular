///
/// venosyd © 2016-2021. sergio lisan <sels@venosyd.com>.
///
library opensyd.angular.components;

import 'dart:async';

import 'package:angular/angular.dart';

import 'src/css/css.dart';
import 'src/widgets/buttons/actionbutton/actionbutton.dart';
import 'src/widgets/dialogs/choice/choice.dart';
import 'src/widgets/dialogs/choose/choose.dart';
import 'src/widgets/dialogs/details/details.dart';
import 'src/widgets/dialogs/dialog/dialog.dart';
import 'src/widgets/inserts/addpasswd/addpasswd.dart';
import 'src/widgets/inserts/adduser/adduser.dart';
import 'src/widgets/inserts/changepasswd/changepasswd.dart';
import 'src/widgets/inserts/input/input.dart';
import 'src/widgets/inserts/report/report.dart';
import 'src/widgets/loadings/loading/loading.dart';
import 'src/widgets/loadings/miniloading/miniloading.dart';
import 'src/widgets/support/moderntooltip/moderntooltip.dart';

export 'package:opensyd_dart/opensyd_dart.dart';

export 'src/css/css.dart';
export 'src/widgets/buttons/actionbutton/actionbutton.dart';
export 'src/widgets/dialogs/choice/choice.dart';
export 'src/widgets/dialogs/choose/choose.dart';
export 'src/widgets/dialogs/details/details.dart';
export 'src/widgets/dialogs/dialog/dialog.dart';
export 'src/widgets/inserts/addpasswd/addpasswd.dart';
export 'src/widgets/inserts/adduser/adduser.dart';
export 'src/widgets/inserts/changepasswd/changepasswd.dart';
export 'src/widgets/inserts/input/input.dart';
export 'src/widgets/inserts/report/report.dart';
export 'src/widgets/loadings/loading/loading.dart';
export 'src/widgets/loadings/miniloading/miniloading.dart';
export 'src/widgets/support/moderntooltip/moderntooltip.dart';

/// widgets da interface grafica
const WIDGETS = <Type>[
  ActionButton,
  AddPasswdDialog,
  AddUserDialog,
  ChoiceDialog,
  ChangePasswdDialog,
  InputDialog,
  ChooseDialog,
  ReportDialog,
  Dialog,
  DetailsDialog,
  MiniLoading,
  Loading,
  ModernTooltip,
];

// basic css files
const BASIC_CSS = [
  CSS_COLORS,
  CSS_ELEMENTS,
  CSS_SIZES,
];

@Component(
  selector: 'app',
  template: '''
    <html>
      <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="apple-mobile-web-app-capable" content="yes">
        <meta name="apple-mobile-web-app-status-bar-style" content="black">
        <meta name="apple-mobile-web-app-title" content="Siscob">
        <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
      </head>
      <body>
        <openux-dialog #dialog></openux-dialog>
        <openux-detailsdialog #details></openux-detailsdialog>
        <openux-choicedialog #choice></openux-choicedialog>
        <openux-choosedialog #choose></openux-choosedialog>
        <openux-input #input></openux-input>

        <openux-tooltip #tooltip></openux-tooltip>

        <openux-addpasswd #addpasswd></openux-addpasswd>
        <openux-adduser #adduser></openux-adduser>
        <openux-changepasswd #changepasswd></openux-changepasswd>

        <openux-loading [message]="'Carregando alguma coisa'" #loading></openux-loading>
        
        <openux-button [color]="'blue'" [text]="'dialog'" [onlytext]="true" 
          (mouseover)="tooltip.show('Caixa de diálogo', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="dialog.showMessage('Working')"></openux-button>

        <openux-button [color]="'yellow'" [text]="'details'" [onlytext]="true" 
          (mouseover)="tooltip.show('Detalhes', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="details.showMessage(loremIpsum())"></openux-button>

        <openux-button [color]="'pink'" [text]="'choice'" [onlytext]="true" 
          (mouseover)="tooltip.show('Escolha', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="choice.showMessage('Working')"></openux-button>

        <openux-button [color]="'gray'" [text]="'choose'" [onlytext]="true" 
          (mouseover)="tooltip.show('Lista de escolhas', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="choose.show(items)"></openux-button>

        <openux-button [color]="'red'" [text]="'input'" [onlytext]="true" 
          (mouseover)="tooltip.show('Entrada de dados', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="input.show()"></openux-button>

        <openux-button [color]="'orange'" [text]="'addpasswd'" [onlytext]="true" 
          (mouseover)="tooltip.show('Adicionar senha', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="addpasswd.show()"></openux-button>

        <openux-button [color]="'purple'" [text]="'changepass'" [onlytext]="true" 
          (mouseover)="tooltip.show('Mudar senha', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="changepasswd.show()"></openux-button>

        <openux-button [color]="'green'" [text]="'loading'" [onlytext]="true" 
          (mouseover)="tooltip.show('Tela de carregamento', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="load()"></openux-button>

        <openux-button [color]="'blue'" [text]="'add user'" [onlytext]="true" 
          (mouseover)="tooltip.show('Adicionar usuario', \$event)" (mouseout)="tooltip.hide()"
          [bigsize]="true" (click)="adduser.show()"></openux-button>
      </body>
    </html>

  ''',
  directives: [WIDGETS],
)
class AppComponent {
  String loremIpsum() =>
      '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, 
      sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
      Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris 
      nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in 
      repre''';

  @ViewChild('loading')
  Loading loading;

  ///
  final items = const ['aaa', 'bbb', 'ccc', 'ddd', 'eee', 'fff'];

  ///
  void load() {
    loading.show();

    Future<dynamic>.delayed(
      const Duration(seconds: 5),
      () => loading.hide(),
    );
  }
}
