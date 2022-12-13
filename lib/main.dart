import 'package:flutter/material.dart';
import 'package:metazone/pages/Dashboards/dashboard.dart';
import 'package:metazone/pages/pre_dash.dart';

import 'flutter_flow/flutter_flow_theme.dart';
import 'login/login.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginWidget(),
    );
  }
}
