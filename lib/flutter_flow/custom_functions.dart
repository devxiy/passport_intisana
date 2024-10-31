import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

double? getRelation(
  int? planned,
  int? registered,
) {
  double num1 = double.parse((registered! / planned!).toStringAsFixed(1));

  return num1;
}

String? statusPendiente() {
  return 'Pendiente';
}
