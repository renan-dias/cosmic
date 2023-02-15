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

class SignupModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // State field(s) for passwordConfirmation widget.
  TextEditingController? passwordConfirmationController;
  late bool passwordConfirmationVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmationControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordConfirmationVisibility = false;
  }

  void dispose() {
    nameController?.dispose();
    passwordController?.dispose();
    passwordConfirmationController?.dispose();
  }

  /// Additional helper methods are added here.

}
