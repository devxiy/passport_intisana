import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'ingresar_cita_widget.dart' show IngresarCitaWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class IngresarCitaModel extends FlutterFlowModel<IngresarCitaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;
  // State field(s) for DropDownUser widget.
  String? dropDownUserValue;
  FormFieldController<String>? dropDownUserValueController;
  // State field(s) for DropDownPeriod widget.
  String? dropDownPeriodValue;
  FormFieldController<String>? dropDownPeriodValueController;
  // State field(s) for topicsField widget.
  FocusNode? topicsFieldFocusNode;
  TextEditingController? topicsFieldTextController;
  String? Function(BuildContext, String?)? topicsFieldTextControllerValidator;
  String? _topicsFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 5) {
      return 'Al menos 5 caracteres';
    }
    if (val.length > 190) {
      return 'Máximo 190 caracteres';
    }

    return null;
  }

  // State field(s) for com1 widget.
  FocusNode? com1FocusNode;
  TextEditingController? com1TextController;
  String? Function(BuildContext, String?)? com1TextControllerValidator;
  String? _com1TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 5) {
      return 'Al menos 5 caracteres';
    }
    if (val.length > 190) {
      return 'Máximo 190 caracteres';
    }

    return null;
  }

  // State field(s) for com2 widget.
  FocusNode? com2FocusNode;
  TextEditingController? com2TextController;
  String? Function(BuildContext, String?)? com2TextControllerValidator;
  String? _com2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 5) {
      return 'Al menos 5 caracteres';
    }
    if (val.length > 190) {
      return 'Máximo 190 caracteres';
    }

    return null;
  }

  // State field(s) for com3 widget.
  FocusNode? com3FocusNode;
  TextEditingController? com3TextController;
  String? Function(BuildContext, String?)? com3TextControllerValidator;
  String? _com3TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 5) {
      return 'Al menos 5 caracteres';
    }
    if (val.length > 190) {
      return 'Máximo 190 caracteres';
    }

    return null;
  }

  // State field(s) for commentsField widget.
  FocusNode? commentsFieldFocusNode;
  TextEditingController? commentsFieldTextController;
  String? Function(BuildContext, String?)? commentsFieldTextControllerValidator;
  String? _commentsFieldTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo requerido';
    }

    if (val.length < 5) {
      return 'Al menos 5 caracteres';
    }
    if (val.length > 190) {
      return 'Máximo 190 caracteres';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (MeetingsPost)] action in Button widget.
  ApiCallResponse? apiResulthun;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
    topicsFieldTextControllerValidator = _topicsFieldTextControllerValidator;
    com1TextControllerValidator = _com1TextControllerValidator;
    com2TextControllerValidator = _com2TextControllerValidator;
    com3TextControllerValidator = _com3TextControllerValidator;
    commentsFieldTextControllerValidator =
        _commentsFieldTextControllerValidator;
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
    topicsFieldFocusNode?.dispose();
    topicsFieldTextController?.dispose();

    com1FocusNode?.dispose();
    com1TextController?.dispose();

    com2FocusNode?.dispose();
    com2TextController?.dispose();

    com3FocusNode?.dispose();
    com3TextController?.dispose();

    commentsFieldFocusNode?.dispose();
    commentsFieldTextController?.dispose();
  }
}
