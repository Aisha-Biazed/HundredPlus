import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:handred_plus_app/splash/presntation/pages/splash_view_body.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () => context.goNamed('onBoarding'));
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () => context.goNamed('onBoarding'));
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}
