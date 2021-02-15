import 'package:calculator/calculator.dart';
import 'package:dahlia_backend/dahlia_backend.dart';
import 'package:pangolin/settings/settings.dart';
import 'package:pangolin/widgets/error_window.dart';

Map<String, Application> applications = {
  "io.dahlia.settings": Application(
      app: Settings(),
      name: "Settings",
      iconName: "settings",
      category: ApplicationCategory.SYSTEM,
      description: ""),
  "io.dahlia.calculator": Application(
      app: Calculator(),
      name: "Calculator",
      iconName: "calculator",
      category: ApplicationCategory.OFFICE,
      description: ""),
};

Application? getApp(String packageName) {
  return applications[packageName];
}

Application get fallbackApp {
  return Application(app: ErrorWindow(), name: "Error");
}
