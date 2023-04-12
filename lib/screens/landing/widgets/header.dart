import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stockflow_design_challenge/shared/extentions.dart';

import '../../../shared/images.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

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
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  right: 0,
                  top: 0,
                  bottom: 0,
                  child: SizedBox(
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
                  left: 160,
                  top: 46,
                  child: Align(
                    child: SizedBox(
                      width: 164.41,
                      height: 125.35,
                      child: Image.asset(
                        headerArchWitShuttle,
                        width: 164.41,
                        height: 125.35,
                      ),
                    ),
                  ),
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
