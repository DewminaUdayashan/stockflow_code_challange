import 'package:flutter/material.dart';
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
        Tween<double>(begin: 1, end: 0.0).animate(flightAnimationController);
    offsetAnimation1 = Tween<Offset>(
      begin: const Offset(55, 45),
      end: const Offset(20, 10),
    ).animate(
      CurvedAnimation(
        parent: flightAnimationController,
        curve: const Interval(0.0, 0.5), // 500ms animation
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
    return Container(
      height: context.height / 3.7,
      width: context.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(earthImageBG),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.only(top: 20, left: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned.fill(
                  child: OpacityTween(
                    child: Text(
                      'Plan your \njourney',
                      style: GoogleFonts.workSans(
                        fontSize: 36,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.2399999946,
                        color: const Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 180,
                  top: 55,
                  child: SizedBox(
                    width: 164,
                    height: 125,
                    child: Image.asset(
                      flightPathImage,
                      width: 164.41,
                      height: 125.35,
                    ),
                  ),
                ),
                Positioned(
                  left: 180,
                  top: 57,
                  child: SizedBox(
                    width: 164,
                    height: 125,
                    child: Image.asset(
                      flightPathImage,
                      width: 164.41,
                      height: 125.35,
                      color: Colors.black12,
                    ),
                  ),
                ),
                Positioned(
                  left: 195,
                  top: 25,
                  child: AnimatedBuilder(
                      animation: flightAnimation,
                      builder: (context, child) {
                        return OpacityTween(
                          duration: const Duration(milliseconds: 300),
                          child: Transform.translate(
                            offset: offsetAnimation1.value,
                            child: Transform.translate(
                              offset: offsetAnimation2.value,
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
                          ),
                        );
                      }),
                ),
                Positioned(
                  bottom: 10,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Round Trip',
                            style: context.textTheme.titleMedium,
                          ),
                          const SizedBox(height: 10),
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
                      const SizedBox(width: 40),
                      Text(
                        'One-Way',
                        style: context.textTheme.titleMedium,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
