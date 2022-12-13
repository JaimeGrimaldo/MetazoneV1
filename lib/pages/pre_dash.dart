import 'package:metazone/pages/Dashboards/dashboard.dart';

import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PreDashboardWidget extends StatefulWidget {
  const PreDashboardWidget({Key? key}) : super(key: key);

  @override
  _PreDashboardWidgetState createState() => _PreDashboardWidgetState();
}

class _PreDashboardWidgetState extends State<PreDashboardWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        title: Text(
          'Seleccionar sección',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: FFButtonWidget(
                  onPressed: () async {
                    print("GUARDADO EN 1");
                  },
                  text: 'Ver META actual',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 80,
                    color: FlutterFlowTheme.of(context).secondaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: FFButtonWidget(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard('mw'),
                      ),
                    );
                  },
                  text: 'Armas de Modern Warfare',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard('cd'),
                      ),
                    );
                  },
                  text: 'Armas de Cold War',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 30, 30, 30),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Dashboard('vg'),
                      ),
                    );
                  },
                  text: 'Armas de Vanguard',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 60,
                    color: FlutterFlowTheme.of(context).primaryColor,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
