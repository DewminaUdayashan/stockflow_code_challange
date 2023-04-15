import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockflow_design_challenge/screens/animations/opacity_tween.dart';
import 'package:stockflow_design_challenge/shared/extentions.dart';

import '../../../shared/images.dart';

class Header extends StatefulWidget {
  const Header({
    super.key,
  });

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> with SingleTickerProviderStateMixin {
  late AnimationController flightAnimationController;
  late Animation<double> flightAnimation;
  late Animation<Offset> offsetAnimation1;
  late Animation<Offset> offsetAnimation2;

  @override
  void initState() {
    super.initState();
    flightAnimationController = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    flightAnimation =
        Tween<double>(begin: 0.7, end: 0.0).animate(flightAnimationController);

    offsetAnimation1 = Tween<Offset>(
      begin: Offset(50.w, 54.h),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: flightAnimationController,
        curve: const Interval(0.0, 1), // 500ms animation
      ),
    );
    offsetAnimation2 = Tween<Offset>(
      begin: const Offset(20, 10),
      end: const Offset(-25, -18),
    ).animate(
      CurvedAnimation(
        parent: flightAnimationController,
        curve: const Interval(0.5, 1.0), // 500ms animation
      ),
    );

    flightAnimationController.forward();
  }

  @override
  void dispose() {
    flightAnimationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (flightAnimationController.isCompleted) {
          flightAnimationController.reverse();
        } else {
          flightAnimationController.forward();
        }
      },
      child: Container(
        height: 234.h,
        width: context.width,
        padding: EdgeInsets.only(left: 32.w, right: 32.w),
        margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(earthImageBG),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 68.h - MediaQuery.of(context).padding.top),
            Expanded(
              flex: 2,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: OpacityTween(
                      child: Text(
                        'Plan your \njourney',
                        style: GoogleFonts.workSans(
                          fontSize: 36.sp,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.24.sp,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 153.w,
                    top: 42.h,
                    child: Image.asset(
                      flightPathImage,
                    ),
                  ),
                  Positioned(
                    left: 153.w,
                    top: 44.h,
                    child: Image.asset(
                      flightPathImage,
                      color: Colors.black12,
                    ),
                  ),
                  Positioned(
                    left: 185.w,
                    top: 15.h,
                    child: AnimatedBuilder(
                        animation: flightAnimation,
                        builder: (context, child) {
                          return Transform.translate(
                            offset: offsetAnimation1.value,
                            child: OpacityTween(
                              duration: const Duration(milliseconds: 300),
                              child: Transform.rotate(
                                angle: flightAnimation.value,
                                child: SizedBox(
                                  width: 164,
                                  height: 125,
                                  child: Image.asset(
                                    flightImage,
                                    width: 164.41,
                                    height: 125.35,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Positioned(
                    bottom: 16.h,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Round Trip',
                              style: context.textTheme.titleMedium
                                  ?.copyWith(fontSize: 14.sp),
                            ),
                            SizedBox(height: 8.h),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Container(
                                width: 24,
                                height: 3,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(3),
                                  color: const Color(0xfff8f6e7),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 47.w),
                        Text(
                          'One-Way',
                          style: context.textTheme.titleMedium
                              ?.copyWith(fontSize: 14.sp),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
