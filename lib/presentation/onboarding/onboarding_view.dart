import 'package:clean_architecture/presentation/resources/assets_manager.dart';
import 'package:clean_architecture/presentation/resources/color_manager.dart';
import 'package:clean_architecture/presentation/resources/strings_manager.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  late final List<SliderObject> _list =_getSliderData();

  List<SliderObject> _getSliderData ()=>[
    SliderObject(AppStrings.onBoardingTitle1, AppStrings.onBoardingSubTitle1, ImageAssets.splashLogo1),
    SliderObject(AppStrings.onBoardingTitle2, AppStrings.onBoardingSubTitle2, ImageAssets.splashLogo2),
    SliderObject(AppStrings.onBoardingTitle3, AppStrings.onBoardingSubTitle3, ImageAssets.splashLogo2),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.grey2,
      body: const Center(child: Text("Welcome to onboarding ")),
    );
  }
}

class SliderObject{
  String title;
  String subTitle;
  String image;

  SliderObject(this.title,this.subTitle,this.image);
}