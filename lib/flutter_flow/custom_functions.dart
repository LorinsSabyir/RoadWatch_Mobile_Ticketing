import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

double totalFines(List<double> fines) {
  return fines.fold(0.0, (sum, item) => sum + item);
}

dynamic validatePassword(String password) {
// Check each condition
  bool hasMinLength = password.length >= 6;
  bool hasUppercase = password.contains(RegExp(r'[A-Z]'));
  bool hasLowercase = password.contains(RegExp(r'[a-z]'));
  bool hasNumber = password.contains(RegExp(r'[0-9]'));
  bool hasSpecial = password.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'));

  // Return as a JSON object
  return {
    'hasMinLength': hasMinLength,
    'hasUppercase': hasUppercase,
    'hasLowercase': hasLowercase,
    'hasNumber': hasNumber,
    'hasSpecial': hasSpecial,
    'allValid':
        hasMinLength && hasUppercase && hasLowercase && hasNumber && hasSpecial
  };
}
