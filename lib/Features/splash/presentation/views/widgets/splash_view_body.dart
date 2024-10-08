import 'package:booky_app_clean_arctect/Features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:booky_app_clean_arctect/core/utils/assets_data.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:get/get_core/get_core.dart';
// import 'package:get/get_navigation/get_navigation.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimatin;

  @override
  void initState() {
    initSlidingAnimation();
    navigatToHome();
    super.initState();
  }

  void navigatToHome() {
    Future.delayed(
      Duration(seconds: 2),
      () {
        GoRouter.of(context).push(
          '/homeView',
        );

        //     Get.to(
        //   () => HomeView(),
        //   transition: Transition.fadeIn,
        //   duration: kTranstionDuration,
        // );
      },
    );
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    slidingAnimatin = Tween<Offset>(
      begin: Offset(0, 10),
      end: Offset(0, 0),
    ).animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(
            height: 5,
          ),
          SlidingText(slidingAnimatin: slidingAnimatin),
        ],
      ),
    );
  }
}
