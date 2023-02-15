import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'forgot_password_model.dart';
export 'forgot_password_model.dart';

class ForgotPasswordWidget extends StatefulWidget {
  const ForgotPasswordWidget({Key? key}) : super(key: key);

  @override
  _ForgotPasswordWidgetState createState() => _ForgotPasswordWidgetState();
}

class _ForgotPasswordWidgetState extends State<ForgotPasswordWidget> {
  late ForgotPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ForgotPasswordModel());

    _model.emailAddressController = TextEditingController();
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 8),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(12, 0, 0, 0),
                      child: FlutterFlowIconButton(
                        borderColor: Colors.transparent,
                        borderRadius: 30,
                        borderWidth: 1,
                        buttonSize: 50,
                        icon: Icon(
                          Icons.arrow_back_rounded,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 24,
                        ),
                        onPressed: () async {
                          context.pop();
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          '9z3r64g9' /* Voltar */,
                        ),
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Unica One',
                              fontSize: 16,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title1Family),
                            ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(24, 0, 0, 0),
                      child: Text(
                        FFLocalizations.of(context).getText(
                          'x9ajp4qt' /* Esqueceu a senha? */,
                        ),
                        style: FlutterFlowTheme.of(context).title1.override(
                              fontFamily: 'Unica One',
                              color: FlutterFlowTheme.of(context).primaryColor,
                              fontSize: 32,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).title1Family),
                            ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          actions: [],
          centerTitle: true,
          elevation: 0,
        ),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 8),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(4, 4, 4, 4),
                    child: Text(
                      FFLocalizations.of(context).getText(
                        's8mygjzh' /* Ah fique tranquilo(a) já já te... */,
                      ),
                      style: FlutterFlowTheme.of(context).bodyText2,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24, 4, 24, 0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    color: Color(0x4D101213),
                    offset: Offset(0, 2),
                  )
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: _model.emailAddressController,
                obscureText: false,
                decoration: InputDecoration(
                  labelText: FFLocalizations.of(context).getText(
                    'cajittbp' /* Email */,
                  ),
                  labelStyle: FlutterFlowTheme.of(context).bodyText2,
                  hintText: FFLocalizations.of(context).getText(
                    'tvvaytw6' /* Digite aqui seu email... */,
                  ),
                  hintStyle: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Lexend Deca',
                        color: Color(0xFF57636C),
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  filled: true,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  contentPadding:
                      EdgeInsetsDirectional.fromSTEB(24, 24, 20, 24),
                ),
                style: FlutterFlowTheme.of(context).bodyText1,
                maxLines: null,
                validator:
                    _model.emailAddressControllerValidator.asValidator(context),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 24, 0, 0),
            child: FFButtonWidget(
              onPressed: () async {
                if (_model.emailAddressController.text.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                        'Email required!',
                      ),
                    ),
                  );
                  return;
                }
                await resetPassword(
                  email: _model.emailAddressController.text,
                  context: context,
                );
              },
              text: FFLocalizations.of(context).getText(
                '781506k9' /* Send Link */,
              ),
              options: FFButtonOptions(
                width: 270,
                height: 50,
                color: FlutterFlowTheme.of(context).primaryColor,
                textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                      fontFamily: 'Unica One',
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).subtitle2Family),
                    ),
                elevation: 3,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
