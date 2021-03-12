///
/// venosyd © 2016-2021
///
library opensyd.angular;

import 'package:angular/angular.dart';
import 'package:opensyd_angular/opensyd_angular.dart';
import 'package:opensyd_angular/opensyd_angular.template.dart' as ng;
import 'package:http/browser_client.dart';

import 'main.template.dart' as self;

@GenerateInjector([
  ClassProvider<BrowserClient>(BrowserClient),
])
InjectorFactory injectorFactory =
    self.injectorFactory$Injector as InjectorFactory;

void main() => runApp<AppComponent>(
      ng.AppComponentNgFactory as ComponentFactory<AppComponent>,
      createInjector: injectorFactory,
    );
