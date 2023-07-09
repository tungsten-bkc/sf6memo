import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../screen/framescreen.dart';
import '../screen/homescreen.dart';
import '../screen/technique_list_home.dart';

final goRouter = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        pageBuilder: (context, state) {
          return const MaterialPage(child: HomeScreen());
        }),
    GoRoute(
        path: '/frame',
        pageBuilder: (context, state) {
          final args = state.extra! as List;
          return MaterialPage(child: Frame(index: args[1], list: args[0]));
        }),
    GoRoute(
        path: '/skill',
        pageBuilder: (context, state) {
          return MaterialPage(
              child: TechniqueListHome(name: state.extra! as String));
        }),
  ],
);
