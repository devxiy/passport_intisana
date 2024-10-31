import '/backend/api_requests/api_calls.dart';
import '/components/select_results_widget.dart';
import '/components/side_bar_nav/side_bar_nav_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'dart:math';
import 'dart:async';
import 'listado_directivos_preceptorias_widget.dart'
    show ListadoDirectivosPreceptoriasWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListadoDirectivosPreceptoriasModel
    extends FlutterFlowModel<ListadoDirectivosPreceptoriasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for DropDownFiltro widget.
  String? dropDownFiltroValue;
  FormFieldController<String>? dropDownFiltroValueController;
  // State field(s) for DropDownStudent widget.
  String? dropDownStudentValue;
  FormFieldController<String>? dropDownStudentValueController;
  // State field(s) for DropDownPreceptor widget.
  String? dropDownPreceptorValue;
  FormFieldController<String>? dropDownPreceptorValueController;
  // State field(s) for DropDownStatus widget.
  String? dropDownStatusValue;
  FormFieldController<String>? dropDownStatusValueController;
  // State field(s) for DropDownPeriod widget.
  String? dropDownPeriodValue;
  FormFieldController<String>? dropDownPeriodValueController;
  Completer<ApiCallResponse>? apiRequestCompleter;
  // Stores action output result for [Backend Call - API (CompleteMentorship)] action in Button widget.
  ApiCallResponse? apiResultu32;
  // Model for sideBarNav component.
  late SideBarNavModel sideBarNavModel;

  @override
  void initState(BuildContext context) {
    sideBarNavModel = createModel(context, () => SideBarNavModel());
  }

  @override
  void dispose() {
    sideBarNavModel.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
