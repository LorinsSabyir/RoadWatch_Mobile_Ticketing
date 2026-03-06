// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

/// Generates the next control number (TCTTMDS + incremented number)
/// and saves it into FFAppState().citationId using a Firestore counter doc.
Future<void> generateControlNumber(BuildContext context) async {
  try {
    // Reference to the single counter document
    final counterRef = FirebaseFirestore.instance
        .collection('settings')
        .doc('citation_counter');

    await FirebaseFirestore.instance.runTransaction((transaction) async {
      final snapshot = await transaction.get(counterRef);

      int lastNum = 0;

      // If doc doesn't exist, create it automatically
      if (!snapshot.exists) {
        transaction.set(counterRef, {'lastControlNumber': 0});
      } else if (snapshot.data()!.containsKey('lastControlNumber')) {
        lastNum = snapshot.get('lastControlNumber');
      }

      // Increment by 1
      int newNum = lastNum + 1;

      // Update the counter document
      transaction.set(
          counterRef, {'lastControlNumber': newNum}, SetOptions(merge: true));

      // Format: TCTTMDS0 (e.g. TCTTMDS1)
      final formattedNum = newNum.toString();
      final newControlNum = 'TCT-TMDS-$formattedNum';

      // Save to AppState
      FFAppState().citationId = newControlNum;
    });
  } catch (e) {
    // ❌ Error message
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          '❌ Failed to generate control number: $e',
          style: TextStyle(color: FlutterFlowTheme.of(context).error),
        ),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      ),
    );
  }
}
