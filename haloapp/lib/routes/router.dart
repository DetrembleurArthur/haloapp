import 'package:flutter/material.dart';
import 'package:haloapp/routes/routes.dart';
import 'package:haloapp/screens/home_screen.dart';

Map<String, Widget Function(BuildContext)> router = {
  kHomeRoute: (context) => const HomeScreen()
};
