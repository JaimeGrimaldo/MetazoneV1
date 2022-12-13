import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../exports/exports_dashboard.dart';
import '../../flutter_flow/flutter_flow_widgets.dart';
import '../meta.dart';
import 'dashboard.dart';

class DashBoard_sniper extends StatefulWidget {
  final String juego;
  const DashBoard_sniper(this.juego, {Key? key}) : super(key: key);
  @override
  State<DashBoard_sniper> createState() => _DashboardState();
}

class _DashboardState extends State<DashBoard_sniper>
    with TickerProviderStateMixin {
  final animationsMap = {
    'tabOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'tabOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        ShakeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          hz: 10,
          offset: Offset(0, 0),
          rotation: 0.087,
        ),
      ],
    ),
  };

  late Future<List<ImagenAmmo>> _listImage;

  @override
  void initState() {
    super.initState();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    if (widget.juego == "mw") {
      BestPostJaime();
    } else if (widget.juego == "cd") {
      BestPost();
    } else if (widget.juego == "vg") {
      BestPostAna();
    }
  }

  void BestPost() {
    final http = Http(baseUrl: 'http://18.217.171.242:8080');
    final AuthenticationRepository auth = AuthenticationRepositoryImpl(
      AuthenticationAPI(http),
    );
    _listImage = auth.better('sniper');
  }

  void BestPostJaime() {
    final http = Http(baseUrl: 'http://18.217.171.242:9000');
    final AuthenticationRepository auth = AuthenticationRepositoryImpl(
      AuthenticationAPI(http),
    );
    _listImage = auth.better('sr');
  }

  void BestPostAna() {
    final http = Http(baseUrl: 'http://18.217.171.242:9001');
    final AuthenticationRepository auth = AuthenticationRepositoryImpl(
      AuthenticationAPI(http),
    );
    _listImage = auth.better('sr');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('FloatingActionButton pressed ...');
        },
        backgroundColor: Color(0xFF4B39EF),
        elevation: 8,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 24,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16, 44, 0, 0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Bienvenido',
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Lexend Deca',
                              color: Color(0xFF090F13),
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                        child: Text(
                          "algo",
                          style: FlutterFlowTheme.of(context).title1.override(
                                fontFamily: 'Lexend Deca',
                                color: Color(0xFF4B39EF),
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                        child: Text(
                          'Consulta el META de Warzone',
                          style:
                              FlutterFlowTheme.of(context).bodyText2.override(
                                    fontFamily: 'Lexend Deca',
                                    color: Color(0xFF8B97A2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    labelColor: Color(0xFF4B39EF),
                    unselectedLabelColor: Color(0xFF95A1AC),
                    labelStyle: GoogleFonts.getFont(
                      'Roboto',
                    ),
                    indicatorColor: Color(0xFF4B39EF),
                    indicatorWeight: 3,
                    tabs: [
                      Tab(
                        text: 'META ACTUAL',
                      ).animateOnActionTrigger(
                        animationsMap['tabOnActionTriggerAnimation1']!,
                      ),
                      Tab(
                        text: 'MIS CLASES',
                      ).animateOnActionTrigger(
                        animationsMap['tabOnActionTriggerAnimation2']!,
                      ),
                    ],
                  ),
                  Expanded(
                    child: FutureBuilder(
                      future: _listImage,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView(
                            shrinkWrap: true,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: _listImageChildren(snapshot.data),
                              ),
                            ],
                          );
                        } else if (snapshot.hasError) {
                          print("${snapshot.data} esto qes");
                          return Text("ERRORx1");
                        }
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _listImageChildren(data) {
    List<ImagenAmmo> datas = data;
    List<Widget> imgs = [];
    for (var i = 0; i < datas.length; i++) {
      imgs.add(
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.85,
          height: MediaQuery.of(context).size.height * 0.85,
          child: Expanded(
            child: TabBarView(
              children: [
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4F8),
                  ),
                  child: SingleChildScrollView(
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: ((context) => VerMetaWidget(
                                datas[0].name, datas[0].url, widget.juego)),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 0),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.96,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x2E000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(0),
                                      bottomRight: Radius.circular(0),
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                    child: Image.network(
                                      datas[i].url,
                                      width: MediaQuery.of(context).size.width,
                                      height: 200,
                                      fit: BoxFit.fitWidth,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 8, 12, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  12, 0, 0, 0),
                                          child: Text(
                                            datas[i].name,
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle1
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF090F13),
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12, 4, 12, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 0, 8),
                                            child: Text(
                                              'Descripcion de arma detallada de BD',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText2
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF95A1AC),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 3,
                                    thickness: 1,
                                    color: Color(0xFFF1F4F8),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 12, 0, 12),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.96,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    color: Color(0x2E000000),
                                    offset: Offset(0, 2),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: ((context) => VerMetaWidget(
                                          datas[1].name,
                                          datas[1].url,
                                          widget.juego)),
                                    ),
                                  );
                                },
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(0),
                                        bottomRight: Radius.circular(0),
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                      ),
                                      child: Image.network(
                                        datas[i + 1].url,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        height: 200,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 8, 12, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    12, 0, 0, 0),
                                            child: Text(
                                              datas[i + 1].name,
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .subtitle1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF090F13),
                                                    fontSize: 18,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          12, 4, 12, 0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 8),
                                              child: Text(
                                                'Descripcion de arma detallada de BD',
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyText2
                                                    .override(
                                                      fontFamily: 'Lexend Deca',
                                                      color: Color(0xFF95A1AC),
                                                      fontSize: 14,
                                                      fontWeight:
                                                          FontWeight.normal,
                                                    ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      height: 3,
                                      thickness: 1,
                                      color: Color(0xFFF1F4F8),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            height: 100,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  Dashboard(widget.juego)),
                                            ),
                                          );
                                        },
                                        text: 'AR',
                                        options: FFButtonOptions(
                                          width: 110,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  Dashboard_sub(widget.juego)),
                                            ),
                                          );
                                        },
                                        text: 'SMG',
                                        options: FFButtonOptions(
                                          width: 110,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  Dashboard_lmg(widget.juego)),
                                            ),
                                          ); //!AAAAA
                                        },
                                        text: 'LMG',
                                        options: FFButtonOptions(
                                          width: 110,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      5, 5, 5, 5),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      FFButtonWidget(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  DashBoard_tactico(
                                                      widget.juego)),
                                            ),
                                          );
                                        },
                                        text: 'TACTICOS',
                                        options: FFButtonOptions(
                                          width: 110,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                      FFButtonWidget(
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: ((context) =>
                                                  Dashboard(widget.juego)),
                                            ),
                                          );
                                        },
                                        text: 'SNIPER',
                                        options: FFButtonOptions(
                                          width: 110,
                                          height: 40,
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryColor,
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Poppins',
                                                    color: Colors.white,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Color(0xFFF1F4F8),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 6, 0, 6),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.96,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 4,
                                color: Color(0x2E000000),
                                offset: Offset(0, 2),
                              )
                            ],
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 1, 0, 0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 8, 12, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            12, 0, 0, 0),
                                        child: Text(
                                          'NombreClase',
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle1
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF090F13),
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            4, 0, 0, 0),
                                        child: Text(
                                          'fecha de publicacion',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText2
                                              .override(
                                                fontFamily: 'Lexend Deca',
                                                color: Color(0xFF95A1AC),
                                                fontSize: 14,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12, 4, 12, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 8),
                                          child: Text(
                                            'Descripcion clase',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText2
                                                .override(
                                                  fontFamily: 'Lexend Deca',
                                                  color: Color(0xFF95A1AC),
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.normal,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  height: 3,
                                  thickness: 1,
                                  color: Color(0xFFF1F4F8),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      16, 0, 16, 4),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0, 0, 16, 0),
                                            child: Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(4, 0, 0, 0),
                                                  child: Text(
                                                    '2,493',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText2
                                                        .override(
                                                          fontFamily:
                                                              'Lexend Deca',
                                                          color:
                                                              Color(0xFF95A1AC),
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Icon(
                                                Icons.mode_comment_outlined,
                                                color: Color(0xFF95A1AC),
                                                size: 24,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(4, 0, 0, 0),
                                                child: Text(
                                                  '4',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText2
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            Color(0xFF95A1AC),
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
      print("antes del if tiene :D en la vuetla ${i}");
      i = i + 1;
      print("antes del if y despues del sumar tiene :D en la vuetla ${i}");
      if (i + 1 == datas.length) {
        print("si entro :D en la vuetla ${i}");
        break;
      }
    }

    return imgs;
  }
}








// child: Card(
//           semanticContainer: true,
//           child: Stack(
//             children: [
//               Center(
//                 child: Image.network(
//                   img.url,
//                   width: 225,
//                   height: 91,
//                   fit: BoxFit.fill,
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text(
//                   img.name,
//                   textAlign: TextAlign.center,
//                 ),
//               ),
//             ],
//           ),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//           elevation: 5,
//         ),

        // Center(
        //   child: Container(
        //     width: 317,
        //     height: 99,
        //     child: GestureDetector(
        //       onTap: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //             builder: (context) => BestWeaponry(img.name),
        //           ),
        //         );
        //       },
        //       child: Column(
        //         mainAxisSize: MainAxisSize.max,
        //         children: [
        //           ClipRRect(
        //             borderRadius: BorderRadius.only(
        //               bottomLeft: Radius.circular(0),
        //               bottomRight: Radius.circular(0),
        //               topLeft: Radius.circular(8),
        //               topRight: Radius.circular(8),
        //             ),
        //             child: Image.network(
        //               img.url,
        //               width: MediaQuery.of(context).size.width,
        //               height: 160,
        //               fit: BoxFit.fitWidth,
        //             ),
        //           ),
        //           Padding(
        //             padding: EdgeInsetsDirectional.fromSTEB(12, 8, 12, 0),
        //             child: Row(
        //               mainAxisSize: MainAxisSize.max,
        //               children: [
        //                 Padding(
        //                   padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
        //                   child: Text(
        //                     img.name,
        //                     style:
        //                         FlutterFlowTheme.of(context).subtitle1.override(
        //                               fontFamily: 'Lexend Deca',
        //                               color: Color(0xFF090F13),
        //                               fontSize: 18,
        //                               fontWeight: FontWeight.w500,
        //                             ),
        //                   ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //           Padding(
        //             padding: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 0),
        //             child: Row(
        //               mainAxisSize: MainAxisSize.max,
        //               children: [
                        // Expanded(
                        //   child: Padding(
                        //     padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                        //     child: Text(
                        //       'Descripcion de arma detallada de BD',
                        //       style: FlutterFlowTheme.of(context)
                        //           .bodyText2
                        //           .override(
                        //             fontFamily: 'Lexend Deca',
                        //             color: Color(0xFF95A1AC),
                        //             fontSize: 14,
                        //             fontWeight: FontWeight.normal,
                        //           ),
                        //     ),
                        //   ),
                        // ),
                      // ],
        //             ),
        //           ),
        //           Divider(
        //             height: 3,
        //             thickness: 1,
        //             color: Color(0xFFF1F4F8),
        //           ),
        //         ],
        //       ),
        //     ),
        //   ),
        // ),