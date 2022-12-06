import 'package:flutter/material.dart';

import 'components/care_view.dart';
import 'components/center_next_button.dart';
import 'components/mood_diary_vew.dart';
import 'components/relax_view.dart';
import 'components/splash_view.dart';
import 'components/top_back_skip_view.dart';
import 'components/welcome_view.dart';

class IntroductionAnimationScreen extends StatefulWidget {
  const IntroductionAnimationScreen({Key? key}) : super(key: key);

  @override
  IntroductionAnimationScreenState createState() =>
      IntroductionAnimationScreenState();
}

class IntroductionAnimationScreenState
    extends State<IntroductionAnimationScreen> with TickerProviderStateMixin {
  AnimationController? animationController;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 8));
    animationController?.animateTo(0.0);
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe1ffeb),
      body: ClipRect(
        child: Stack(
          children: [
            SplashView(
              animationController: animationController!,
            ),
            RelaxView(
              animationController: animationController!,
            ),
            CareView(
              animationController: animationController!,
            ),
            MoodDiaryVew(
              animationController: animationController!,
            ),
            WelcomeView(
              animationController: animationController!,
            ),
            TopBackSkipView(
              onBackClick: _onBackClick,
              onSkipClick: _onSkipClick,
              animationController: animationController!,
            ),
            CenterNextButton(
              animationController: animationController!,
              onNextClick: _onNextClick,
            ),
          ],
        ),
      ),
    );
  }

  void _onSkipClick() {
    animationController?.animateTo(0.8,
        duration: const Duration(milliseconds: 1200));
  }

  void _onBackClick() {
    if (animationController!.value >= 0 && animationController!.value <= 0.2) {
      animationController?.animateTo(0.0);
    } else if (animationController!.value > 0.2 &&
        animationController!.value <= 0.4) {
      animationController?.animateTo(0.2);
    } else if (animationController!.value > 0.4 &&
        animationController!.value <= 0.6) {
      animationController?.animateTo(0.4);
    } else if (animationController!.value > 0.6 &&
        animationController!.value <= 0.8) {
      animationController?.animateTo(0.6);
    } else if (animationController!.value > 0.8 &&
        animationController!.value <= 1.0) {
      animationController?.animateTo(0.8);
    }
  }

  void _onNextClick() {
    if (animationController!.value >= 0 && animationController!.value <= 0.2) {
      animationController?.animateTo(0.4);
    } else if (animationController!.value > 0.2 &&
        animationController!.value <= 0.4) {
      animationController?.animateTo(0.6);
    } else if (animationController!.value > 0.4 &&
        animationController!.value <= 0.6) {
      animationController?.animateTo(0.8);
    } else if (animationController!.value > 0.6 &&
        animationController!.value <= 0.8) {
      _signUpClick();
    }
  }

  void _signUpClick() {
    Navigator.pop(context);
  }
}
