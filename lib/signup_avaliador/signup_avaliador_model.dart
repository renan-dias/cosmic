import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../flutter_flow/upload_media.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SignupAvaliadorModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  bool isMediaUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // State field(s) for teacherName widget.
  TextEditingController? teacherNameController;
  String? Function(BuildContext, String?)? teacherNameControllerValidator;
  // State field(s) for schoolName widget.
  TextEditingController? schoolNameController;
  String? Function(BuildContext, String?)? schoolNameControllerValidator;
  // State field(s) for className widget.
  TextEditingController? classNameController;
  String? Function(BuildContext, String?)? classNameControllerValidator;
  // State field(s) for teams1 widget.
  TextEditingController? teams1Controller;
  String? Function(BuildContext, String?)? teams1ControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    teacherNameController?.dispose();
    schoolNameController?.dispose();
    classNameController?.dispose();
    teams1Controller?.dispose();
  }

  /// Additional helper methods are added here.

}
