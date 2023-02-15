import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'signup_model.dart';
export 'signup_model.dart';

class SignupWidget extends StatefulWidget {
  const SignupWidget({
    Key? key,
    this.username,
  }) : super(key: key);

  final String? username;

  @override
  _SignupWidgetState createState() => _SignupWidgetState();
}

class _SignupWidgetState extends State<SignupWidget> {
  late SignupModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SignupModel());

    _model.nameController = TextEditingController();
    _model.passwordController = TextEditingController();
    _model.passwordConfirmationController = TextEditingController();
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
          _model.nameController.text,
          _model.passwordController.text,
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
                color: Colors.black,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.asset(
                    'assets/images/nasa01_S_1.png',
                  ).image,
                ),
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: Color(0x28003E52),
                ),
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            FFLocalizations.of(context).getText(
                              'ncbaw239' /* O jogo */,
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
                    Container(
                      width: double.infinity,
                      height: 583.9,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 16, 0, 20),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Align(
                                      alignment: AlignmentDirectional(0, 0),
                                      child: Image.asset(
                                        'assets/images/Cosmic-2.png',
                                        width: 525.8,
                                        height: 105,
                                        fit: BoxFit.contain,
                                      ),
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
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      44, 0, 44, 0),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: TextFormField(
                                            controller: _model.nameController,
                                            obscureText: false,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF0F1113),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2Family),
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'f7nqedna' /* Insira seu email */,
                                              ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF95A1AC),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family),
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Unica One',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                                ),
                                            textAlign: TextAlign.center,
                                            maxLines: null,
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            validator: _model
                                                .nameControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: TextFormField(
                                            controller:
                                                _model.passwordController,
                                            obscureText:
                                                !_model.passwordVisibility,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF0F1113),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2Family),
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                'r88t8mr6' /* Insira sua senha */,
                                              ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF95A1AC),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family),
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .passwordVisibility =
                                                      !_model
                                                          .passwordVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.passwordVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Unica One',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .passwordControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 20, 0, 0),
                                          child: TextFormField(
                                            controller: _model
                                                .passwordConfirmationController,
                                            obscureText: !_model
                                                .passwordConfirmationVisibility,
                                            decoration: InputDecoration(
                                              labelStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .subtitle2
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF0F1113),
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .subtitle2Family),
                                                      ),
                                              hintText:
                                                  FFLocalizations.of(context)
                                                      .getText(
                                                '0mdal1tc' /* Confirme sua senha */,
                                              ),
                                              hintStyle: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyText1
                                                  .override(
                                                    fontFamily: 'Lexend Deca',
                                                    color: Color(0xFF95A1AC),
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                    useGoogleFonts: GoogleFonts
                                                            .asMap()
                                                        .containsKey(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyText1Family),
                                                  ),
                                              enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              errorBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              focusedErrorBorder:
                                                  OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Color(0x00000000),
                                                  width: 1,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8),
                                              ),
                                              filled: true,
                                              fillColor: Colors.white,
                                              contentPadding:
                                                  EdgeInsetsDirectional
                                                      .fromSTEB(20, 24, 20, 24),
                                              suffixIcon: InkWell(
                                                onTap: () => setState(
                                                  () => _model
                                                          .passwordConfirmationVisibility =
                                                      !_model
                                                          .passwordConfirmationVisibility,
                                                ),
                                                focusNode: FocusNode(
                                                    skipTraversal: true),
                                                child: Icon(
                                                  _model.passwordConfirmationVisibility
                                                      ? Icons
                                                          .visibility_outlined
                                                      : Icons
                                                          .visibility_off_outlined,
                                                  color: Color(0xFF757575),
                                                  size: 22,
                                                ),
                                              ),
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .subtitle2
                                                .override(
                                                  fontFamily: 'Unica One',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                  useGoogleFonts: GoogleFonts
                                                          .asMap()
                                                      .containsKey(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .subtitle2Family),
                                                ),
                                            textAlign: TextAlign.center,
                                            validator: _model
                                                .passwordConfirmationControllerValidator
                                                .asValidator(context),
                                          ),
                                        ),
                                        Text(
                                          FFLocalizations.of(context).getText(
                                            '6y8fgndf' /* Escolha seu cargo */,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .subtitle2
                                              .override(
                                                fontFamily:
                                                    FlutterFlowTheme.of(context)
                                                        .subtitle2Family,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                                useGoogleFonts: GoogleFonts
                                                        .asMap()
                                                    .containsKey(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .subtitle2Family),
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 24, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent(true);
                                                    if (_model
                                                            .passwordController
                                                            .text !=
                                                        _model
                                                            .passwordConfirmationController
                                                            .text) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Passwords don\'t match!',
                                                          ),
                                                        ),
                                                      );
                                                      return;
                                                    }

                                                    final user =
                                                        await createAccountWithEmail(
                                                      context,
                                                      _model
                                                          .nameController.text,
                                                      _model.passwordController
                                                          .text,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    final usersCreateData =
                                                        createUsersRecordData(
                                                      email: '',
                                                    );
                                                    await UsersRecord.collection
                                                        .doc(user.uid)
                                                        .update(
                                                            usersCreateData);

                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamedAuth(
                                                      'signupInvestigador',
                                                      mounted,
                                                      ignoreRedirect: true,
                                                    );
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'ezd0e7v7' /* investigador */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 230,
                                                    height: 50,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText2
                                                            .override(
                                                              fontFamily:
                                                                  'Unica One',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
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
                                            ),
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [],
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 24, 0, 0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    GoRouter.of(context)
                                                        .prepareAuthEvent(true);
                                                    if (_model
                                                            .passwordController
                                                            .text !=
                                                        _model
                                                            .passwordConfirmationController
                                                            .text) {
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        SnackBar(
                                                          content: Text(
                                                            'Passwords don\'t match!',
                                                          ),
                                                        ),
                                                      );
                                                      return;
                                                    }

                                                    final user =
                                                        await createAccountWithEmail(
                                                      context,
                                                      _model
                                                          .nameController.text,
                                                      _model.passwordController
                                                          .text,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    final usersCreateData =
                                                        createUsersRecordData(
                                                      email: '',
                                                    );
                                                    await UsersRecord.collection
                                                        .doc(user.uid)
                                                        .update(
                                                            usersCreateData);

                                                    if (Navigator.of(context)
                                                        .canPop()) {
                                                      context.pop();
                                                    }
                                                    context.pushNamedAuth(
                                                      'signupAvaliador',
                                                      mounted,
                                                      ignoreRedirect: true,
                                                    );
                                                  },
                                                  text: FFLocalizations.of(
                                                          context)
                                                      .getText(
                                                    'hd9d6q5s' /* Avaliador */,
                                                  ),
                                                  options: FFButtonOptions(
                                                    width: 230,
                                                    height: 50,
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                    textStyle:
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .bodyText2
                                                            .override(
                                                              fontFamily:
                                                                  'Unica One',
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              useGoogleFonts: GoogleFonts
                                                                      .asMap()
                                                                  .containsKey(
                                                                      FlutterFlowTheme.of(
                                                                              context)
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
                                            ),
                                          ],
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
