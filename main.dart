import 'package:budget_tracker/pages/Profile.dart';
import 'package:budget_tracker/pages/Budget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Budget Tracker',
    debugShowCheckedModeBanner: false,
    scrollBehavior: ScrollBehavior(),
    initialRoute: '/User',
    routes: {
      '/User': (context) => const Profile(),
      '/Budget': (context) => const Budget(),
    },
  ));
}
