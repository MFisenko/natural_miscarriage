import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:natural_miscarriage/pages/alterative_methods.dart';
import 'package:natural_miscarriage/pages/during_miscarriage_and_aftercare.dart';
import 'package:natural_miscarriage/pages/method_page.dart';
import 'package:natural_miscarriage/pages/natural_diet_suggestions.dart';
import 'firebase_options.dart';
import 'pages/main_menu.dart';
import 'pages/immediate_use_methods.dart';
import 'pages/my_checklist.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    name: 'MaxFirstApp',
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/': (context) => const MainMenu(),
      '/second': (context) => const ImmediateUseMethods(),
      '/third': (context) => const AlternativeOptions(),
      '/forth': (context) => const DuringMiscarriageAndAftercare(),
      '/fifth': (context) => const NaturalDietSuggestions(),
      '/sixth': (context) => const MyChecklist(),
      '/seventh': (context) => const MethodPage()
    },
  ));
}
