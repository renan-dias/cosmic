import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_model.dart';
export 'login_model.dart';

class LoginWidget extends StatefulWidget {
  const LoginWidget({Key? key}) : super(key: key);

  @override
  _LoginWidgetState createState() => _LoginWidgetState();
}

class _LoginWidgetState extends State<LoginWidget> {
  late LoginModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginModel());

    _model.emailAddressLoginController = TextEditingController();
    _model.passwordLoginController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return InkWell(
      onTap: () async {
        GoRouter.of(context).prepareAuthEvent();

        final user = await signInWithEmail(
          context,
          _model.emailAddressLoginController.text,
          _model.passwordLoginController.text,
        );
        if (user == null) {
          return;
        }

        context.goNamedAuth('Home', mounted);
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF14181B),
        body: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            decoration: BoxDecoration(
              color: Color(0xFF14181B),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.network(
                  'https://images.unsplash.com/photo-1525824236856-8c0a31dfe3be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2F0ZXJmYWxsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60',
                ).image,
              ),
            ),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              constraints: BoxConstraints(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
              ),
              decoration: BoxDecoration(
                color: Color(0x99000000),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/nasa01_S_1.png',
                  ).image,
                ),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 100,
                    color: Color(0xCA000000),
                    offset: Offset(0, 2),
                    spreadRadius: 50,
                  )
                ],
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(0x88000000),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'glpn5p3j' /* O jogo */,
                            ),
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Unica One',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontWeight: FontWeight.w900,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .title2Family),
                                ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(0, 0),
                            child: Image.asset(
                              'assets/images/Cosmic.png',
                              width: 160,
                              height: 105,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        decoration: BoxDecoration(
                          color: Color(0x00003E52),
                          border: Border.all(
                            color: Color(0x00003E52),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(44, 0, 44, 0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: TextFormField(
                                    controller:
                                        _model.emailAddressLoginController,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'rhb1nnvv' /* Usuário */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .subtitle2
                                          .override(
                                            fontFamily: 'Outfit',
                                            color: Color(0xFF0F1113),
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2Family),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Unica One',
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                        ),
                                    textAlign: TextAlign.center,
                                    validator: _model
                                        .emailAddressLoginControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 12, 0, 0),
                                  child: TextFormField(
                                    controller: _model.passwordLoginController,
                                    obscureText:
                                        !_model.passwordLoginVisibility,
                                    decoration: InputDecoration(
                                      labelText:
                                          FFLocalizations.of(context).getText(
                                        'wkebxxjm' /* Senha */,
                                      ),
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyText1
                                          .override(
                                            fontFamily: 'Lexend Deca',
                                            color: Color(0xFF95A1AC),
                                            fontSize: 14,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1Family),
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      filled: true,
                                      fillColor: Colors.white,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                      suffixIcon: InkWell(
                                        onTap: () => setState(
                                          () => _model.passwordLoginVisibility =
                                              !_model.passwordLoginVisibility,
                                        ),
                                        focusNode:
                                            FocusNode(skipTraversal: true),
                                        child: Icon(
                                          _model.passwordLoginVisibility
                                              ? Icons.visibility_outlined
                                              : Icons.visibility_off_outlined,
                                          color: Color(0xFF95A1AC),
                                          size: 20,
                                        ),
                                      ),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .subtitle2
                                        .override(
                                          fontFamily: 'Outfit',
                                          color: Color(0xFF0F1113),
                                          fontSize: 16,
                                          fontWeight: FontWeight.normal,
                                          useGoogleFonts: GoogleFonts.asMap()
                                              .containsKey(
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2Family),
                                        ),
                                    textAlign: TextAlign.start,
                                    validator: _model
                                        .passwordLoginControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 24, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      GoRouter.of(context).prepareAuthEvent();

                                      final user = await signInWithEmail(
                                        context,
                                        _model.emailAddressLoginController.text,
                                        _model.passwordLoginController.text,
                                      );
                                      if (user == null) {
                                        return;
                                      }

                                      context.goNamedAuth('Home', mounted);
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'm0ups3w1' /* Login */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 230,
                                      height: 50,
                                      color: FlutterFlowTheme.of(context)
                                          .primaryColor,
                                      textStyle: FlutterFlowTheme.of(context)
                                          .bodyText2
                                          .override(
                                            fontFamily: 'Unica One',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryBackground,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText2Family),
                                          ),
                                      elevation: 3,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 20, 0, 0),
                                  child: FFButtonWidget(
                                    onPressed: () async {
                                      if (Navigator.of(context).canPop()) {
                                        context.pop();
                                      }
                                      context.pushNamed('forgotPassword');
                                    },
                                    text: FFLocalizations.of(context).getText(
                                      'qkfkm9vb' /* Esqueceu a senha? */,
                                    ),
                                    options: FFButtonOptions(
                                      width: 170,
                                      height: 40,
                                      color: Color(0x0039D2C0),
                                      textStyle: FlutterFlowTheme.of(context)
                                          .subtitle1
                                          .override(
                                            fontFamily: 'Unica One',
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                            useGoogleFonts: GoogleFonts.asMap()
                                                .containsKey(
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle1Family),
                                          ),
                                      elevation: 0,
                                      borderSide: BorderSide(
                                        color: Colors.transparent,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 0),
                                        child: Text(
                                          FFLocalizations.of(context).getText(
                                            'wxi0jnr6' /* Ou faça o Login com uma rede s... */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily: 'Unica One',
                                                color: Color(0xC8FFFFFF),
                                                fontSize: 16,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .subtitle2Family),
                                              ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 16, 0, 8),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      InkWell(
                                        onTap: () async {
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          final user =
                                              await signInWithGoogle(context);
                                          if (user == null) {
                                            return;
                                          }

                                          context.goNamedAuth('Home', mounted);
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 5,
                                                color: Color(0x3314181B),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            shape: BoxShape.circle,
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.google,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () async {
                                          GoRouter.of(context)
                                              .prepareAuthEvent();
                                          final user =
                                              await signInWithApple(context);
                                          if (user == null) {
                                            return;
                                          }

                                          context.goNamedAuth('Home', mounted);
                                        },
                                        child: Container(
                                          width: 50,
                                          height: 50,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryColor,
                                            boxShadow: [
                                              BoxShadow(
                                                blurRadius: 5,
                                                color: Color(0x3314181B),
                                                offset: Offset(0, 2),
                                              )
                                            ],
                                            shape: BoxShape.circle,
                                          ),
                                          alignment: AlignmentDirectional(0, 0),
                                          child: FaIcon(
                                            FontAwesomeIcons.apple,
                                            color: Colors.white,
                                            size: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 20, 0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 12, 0, 0),
                                        child: InkWell(
                                          onTap: () async {
                                            if (Navigator.of(context)
                                                .canPop()) {
                                              context.pop();
                                            }
                                            context.pushNamed('signup');
                                          },
                                          child: Text(
                                            FFLocalizations.of(context).getText(
                                              'vwoxwvdk' /* NOVO USUÁRIO */,
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .title2
                                                .override(
                                                  fontFamily: 'Unica One',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .title2Family),
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
