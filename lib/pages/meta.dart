// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:metazone/models/datos_ammo.dart';

import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import 'Dashboards/dashboard.dart';

class VerMetaWidget extends StatefulWidget {
  String name;
  String image;
  String juego;
  VerMetaWidget(this.name, this.image, this.juego);

  @override
  _VerMetaWidgetState createState() => _VerMetaWidgetState();
}

class _VerMetaWidgetState extends State<VerMetaWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  TextEditingController? textController5;
  TextEditingController? textController6;
  TextEditingController? textController7;
  TextEditingController? textController8;
  TextEditingController? textController9;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController(); //Boca de cañon
    textController2 = TextEditingController(); //Cañones
    textController3 = TextEditingController(); //Laser
    textController4 = TextEditingController(); //Mira
    textController5 = TextEditingController(); //Culata
    textController6 = TextEditingController(); //Acople
    textController7 = TextEditingController(); //Cargador
    textController8 = TextEditingController(); //Empuñadura
    textController9 = TextEditingController(); //Ventaja
    Datos_arma arma = new Datos_arma();
    print(("esto deberia ser el nombre y no null ${arma.getName()}"));
    print("ESTO DEBE DE SER IMAGEN ${arma.imgA}");
    armamento();
  }

  @override
  void dispose() {
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    textController5?.dispose();
    textController6?.dispose();
    textController7?.dispose();
    textController8?.dispose();
    textController9?.dispose();
    super.dispose();
  }

  void armamento() {
    if (widget.name == "mp5") {
      armamentoMP5();
    }
    if (widget.name == "MP5") {
      armamentoMP5MW();
    }
    if (widget.name == "M4" || widget.name == "m4") {
      armamentoM4();
    }
    if (widget.name == "FFAR" || widget.name == "ffar") {
      armamentoFFAR();
    }
    if (widget.name == "XM4" || widget.name == "xm4") {
      armamentoXM4();
    }
    if (widget.name == "Grau" || widget.name == "GRAU") {
      armamentoGrau();
    }
    if (widget.name == "mp7" || widget.name == "MP7") {
      armamentoMP7();
    }
    if (widget.name == "Bruen MK9") {
      armamentoBruen();
    }
    if (widget.name == "PKM") {
      armamentoPKM();
    }
    if (widget.name == "SPR 208") {
      armamentoSPR();
    }
    if (widget.name == "Kar98k") {
      armamentoKar();
    }
    if (widget.name == "HDR") {
      armamentoHDR();
    }
    if (widget.name == "AX-50") {
      armamentoAX50();
    }
    if (widget.name == "ppsh-41") {
      armamentoPpsh();
    }
    if (widget.name == "CooperCarbine") {
      carabinaCooper();
    }
    if (widget.name == "Automaton") {
      automata();
    }
    if (widget.name == "Armaguerra") {
      armaguerra();
    }
    if (widget.name == "MP-40") {
      mp40();
    }
    if (widget.name == "DP27") {
      dp27();
    }
    if (widget.name == "Bren") {
      bren();
    }
    if (widget.name == "FUSIL DE 3 LINEAS") {
      lineas3();
    }
    if (widget.name == "TYPE 99") {
      type99();
    }
  }

  void armamentoMP5() {
    textController1?.text = "Silenciador Agency";
    textController4?.text = "Mira tigre spotlight";
    textController6?.text = "Empuñadura de matón";
    textController7?.text = "Cargador STANAG 50 balas";
    textController5?.text = "Culata Rider";
  }
  void armamentoMP5MW() {
    textController1?.text = "Silenciador Monolitico";
    textController3?.text = "Láser de 5mW";
    textController6?.text = "Empuñadura delantera de mercenario";
    textController7?.text = "Cargador de 45 balas";
    textController5?.text = "Culata plegada";
  }

void armamentoM4() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "Cañon M16 Granadero";
    textController4?.text = "Mira optica VLK x3";
    textController6?.text = "Empuñadura frontal de comando";
    textController7?.text = "Cargador de 60 balas";
  }

void armamentoFFAR() {
    textController1?.text = "Silenciador Agency";
    textController2?.text = "21.2 pulgadas de Ranger";
    textController5?.text = "Almohadilla Rider";
    textController6?.text = "Empuñadura de agente de campo";
    textController7?.text = "Cargadores rapidos 50 balas";
  }
  
void armamentoXM4() {
    textController1?.text = "Silenciador Agency";
    textController2?.text = "13.5 fuerza operativa";
    textController4?.text = "Mira optica Axial Arms x3";
    textController6?.text = "Empuñadura de agente de campo";
    textController7?.text = "Cargadores de 60 balas";
  }

void armamentoGrau() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "Tempus Arcangel";
    textController3?.text = "Láser táctico";
    textController6?.text = "Empuñadura frontal de comando";
    textController7?.text = "Cargadores de 60 balas";
  }

void armamentoMP7() {
    textController1?.text = "Silenciador Monolitico";
    textController5?.text = "Sin culata";
    textController3?.text = "Láser de 5mW";
    textController6?.text = "Empuñadura frontal de mercenario";
    textController7?.text = "Cargadores de 60 balas";
  }

void armamentoBruen() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "XRK Summit 26.8";
    textController4?.text = "Mira optica VLK x3";
    textController6?.text = "Empuñadura frontal de comando";
    textController7?.text = "Cargadores de 60 balas";
  }

void armamentoPKM() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "Cañón amplificado de 68,3 cm";
    textController4?.text = "Mira optica VLK x3";
    textController6?.text = "Empuñadura frontal de comando";
    textController3?.text = "Láser táctico";
  }

void armamentoSPR() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "SP-R 26";
    textController4?.text = "Mira francotirador de zoom variable";
    textController7?.text = "Cargadores 338 Lapua Mag 5-R";
    textController3?.text = "Láser táctico";
  }
void armamentoKar() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "Singuard personalizado 27.6cm";
    textController4?.text = "Mira de francotirador / Zoom variable";
    textController5?.text = "FTAC Sport Comb";
    textController3?.text = "Láser táctico";
  }
void armamentoHDR() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "HDR pro";
    textController4?.text = "Mira de francotirador / Zoom variable";
    textController9?.text = "Prestidigitación";
    textController3?.text = "Láser táctico";
  }
void armamentoAX50() {
    textController1?.text = "Silenciador Monolitico";
    textController2?.text = "32.0";
    textController4?.text = "Mira de francotirador / Zoom variable";
    textController9?.text = "Prestidigitación";
    textController3?.text = "Láser táctico";
  }

///////// CW //////////////////////////////////////////////////////////////////////////////////////////

void armamentoPpsh() {
    textController1?.text = "Silenciador GRU";
    textController2?.text = "15.7 Fuerza operativa";
    textController4?.text = "Microflex LED";
    textController6?.text = "Empuñadura frontal Spetsnaz";
    textController7?.text = "Cargadores de 71 balas";
  }

// VG //

/*     textController1 = TextEditingController(); //Boca de cañon
    textController2 = TextEditingController(); //Cañones
    textController3 = TextEditingController(); //Laser
    textController4 = TextEditingController(); //Mira
    textController5 = TextEditingController(); //Culata
    textController6 = TextEditingController(); //Acople
    textController7 = TextEditingController(); //Cargador
    textController8 = TextEditingController(); //Empuñadura
    textController9 = TextEditingController(); //Ventaja */

void carabinaCooper() {
  textController1?.text = "Silenciador MX";
  textController2?.text = "22 pulgadas Cooper";
  textController4?.text = "SVT-40 PU Alcance 3-6x";
  textController5?.text = "Cooper 45RS";
  textController6?.text = "Empuñadura frontal m1941";
  textController7?.text = "Cargador de 9mm 60 rondas";
  textController8?.text = "Empuñadura trasera de polimero";
  textController9?.text = "Completamente cargado";
}

void automata() {
  textController1?.text = "Silenciador de mercurio";
  textController2?.text = "ZAC 600mm BFA";
  textController4?.text = "G16 x2.5";
  textController5?.text = "Anastasia Padded";
  textController6?.text = "Empuñadura frontal m1941";
  textController7?.text = "Cargador de 6.5mm Sakura 75 rondas";
  textController8?.text = "Empuñadura trasera de polimero";
  textController9?.text = "Completamente cargado";
}

void armaguerra() {
  textController1?.text = "Amplificador de retroceso";
  textController2?.text = "Botti 315 mm CII";
  textController4?.text = "Reflector Slate";
  textController5?.text = "Imerito SA plegables";
  textController6?.text = "Mark VI Skeletal";
  textController7?.text = "9mm de 60 balas";
  textController8?.text = "Empuñadura trasera de polimero";
  textController9?.text = "Juego de manos";
}

void mp40() {
  textController1?.text = "Amplificador de retroceso";
  textController2?.text = "VDD 189mm Short";
  textController4?.text = "Reflector Slate";
  textController5?.text = "Krausnick 33M Plegable";
  textController6?.text = "Empuñadura frontal m1941";
  textController7?.text = "7.62 Gorenko proyectiles 45";
  textController8?.text = "Empuñadura trasera punteada";
  textController9?.text = "Rapido";
}

void dp27() {
  textController1?.text = "Amplificador de retroceso";
  textController2?.text = "Kovalevskaya 604MM";
  textController4?.text = "Reflector Slate";
  textController5?.text = "ZAC S2M";
  textController6?.text = "Empuñadura pesada";
  textController7?.text = "7.62x54MMR 105";
  textController8?.text = "Empuñadura trasera punteada";
  textController9?.text = "Completamente cargado";
}


void bren() {
  textController1?.text = "Silenciador MX";
  textController2?.text = "Queen’s 705 mm Royal";
  textController4?.text = "SVT-40 PU telescopica x3-6";
  textController5?.text = "Queen’s Model 11 BH";
  textController6?.text = "Empuñadura frontal m1941";
  textController7?.text = "6.5 Sakura 40 Round Mags";
  textController8?.text = "Empuñadura trasera de polimero";
  textController9?.text = "Completamente cargado";
}

void lineas3() {
  textController1?.text = "Silenciador Mercury";
  textController2?.text = "Empress 514mm F01";
  textController4?.text = "1913 Variable 4-8x";
  textController5?.text = "ZAC Custom MZ";
  textController6?.text = "Mark IV Skeleton";
  textController7?.text = ".30-06 30";
  textController8?.text = "Empuñadura trasera de cuero";
  textController9?.text = "Enfoque silencioso";
}

void type99() {
  textController1?.text = "Freno L";
  textController2?.text = "Shiraishi Corto";
  textController5?.text = "Culata eliminada";
  textController6?.text = "Empuñadura de pistola SMLE";
  textController7?.text = "Munición subsonica";
  textController8?.text = "Empuñadura agarre de tela";
  textController9?.text = "Vital";
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => Dashboard(widget.juego)),
              ),
            );
          },
        ),
        title: Text(
          'Clase META',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.2,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.network(
                        widget.image,
                        width: MediaQuery.of(context).size.width * 0.2,
                        height: MediaQuery.of(context).size.height * 0.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 10),
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Configuración de ',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context).bodyText1,
                              ),
                              Text(
                                '${widget.name}',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                          child: TextFormField(
                            controller: textController1,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Boca de cañón',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController2,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Cañón',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController3,
                            autofocus: true,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Láser',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController4,
                            autofocus: true,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Mira',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController5,
                            autofocus: true,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Culata',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController6,
                            autofocus: true,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Acople',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController7,
                            autofocus: true,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Cargador',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController8,
                            autofocus: true,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Empuñadura',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(3, 3, 3, 3),
                          child: TextFormField(
                            controller: textController9,
                            autofocus: true,
                            readOnly: true,
                            obscureText: false,
                            decoration: InputDecoration(
                              labelText: 'Ventaja',
                              hintStyle: FlutterFlowTheme.of(context).bodyText2,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              errorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                              focusedErrorBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0x00000000),
                                  width: 1,
                                ),
                                borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(4.0),
                                  topRight: Radius.circular(4.0),
                                ),
                              ),
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
                  child: Container(
                    width: double.infinity,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                            child: Text(
                              'Estadisticas',
                              style: FlutterFlowTheme.of(context).title1,
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Tiempo para matar:',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'ttk',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Alcance de daño efectivo:',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'alcance',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Velocidad de bala:',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'velocidad',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'Retroceso:',
                                  style: FlutterFlowTheme.of(context).bodyText1,
                                ),
                              ),
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(5, 5, 5, 5),
                                child: Text(
                                  'intensidad',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyText1
                                      .override(
                                        fontFamily: 'Poppins',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
