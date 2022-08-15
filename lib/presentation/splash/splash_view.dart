import 'dart:async';

import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/constants_manager.dart';
import 'package:clean_architecture/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay(){
    _timer=Timer(const Duration(seconds:AppConstants.splashDelay),_goNext);
  }

  _goNext(){
    Navigator.pushReplacementNamed(context, Routes.onBoardingRoute);
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startDelay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
          child: SizedBox(
              width: double.infinity,
              child: Image(
                image: AssetImage(ImageAssets.splashLogo),
                fit: BoxFit.cover,
              ))),
    );
  }
  /// i canceled it after it happened in front of user
  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
