import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screen/framescreen.dart';
import '../screen/homescreen.dart';
import '../screen/jamiescreen.dart';
import '../screen/test_csv_temp.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        }),
    GoRoute(
        path: '/JAMIE',
        pageBuilder: (context, state) {
          return const MaterialPage(child: JamieScreen());
        }),
    GoRoute(
        path: '/FRAME',
        pageBuilder: (context, state) {
          return const MaterialPage(child: Frame());
        }),
    GoRoute(
        path: '/RYU',
        pageBuilder: (context, state) {
          return const MaterialPage(child: TestCsvTmp());
        }),
  ],
);