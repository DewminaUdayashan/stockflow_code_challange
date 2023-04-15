import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stockflow_design_challenge/screens/animations/opacity_tween.dart';
import 'package:stockflow_design_challenge/screens/landing/widgets/custom_text_field.dart';
import 'package:stockflow_design_challenge/screens/landing/widgets/header.dart';
import 'package:stockflow_design_challenge/screens/landing/widgets/title_row.dart';
import 'package:stockflow_design_challenge/shared/app_routes.dart';
import 'package:stockflow_design_challenge/shared/enums.dart';
import 'package:stockflow_design_challenge/shared/extentions.dart';
import 'package:stockflow_design_challenge/shared/responsive/mock_design.dart';

import '../../shared/images.dart';
import '../animations/slide_up_tween.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: MockDesign(
          designImagePath: 'assets/images/landing_design.png',
          showOverlay: false,
          child: SizedBox(
            height: context.height,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                /// header
                const OpacityTween(child: Header()),

                /// body
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: context.colorScheme.background,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(40.r),
                      ),
                    ),
                    padding: EdgeInsets.only(
                      left: 35.w,
                      right: 35.w,
                      top: 32.h,
                    ),
                    child: OpacityTween(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const TitleRow(
                            firstTitle: 'FROM',
                            secondTitle: 'TO',
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'MLB',
                                      style: context.textTheme.headlineLarge
                                          ?.copyWith(
                                        fontSize: 40.sp,
                                      ),
                                    ),
                                    SizedBox(height: 7.h),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.w),
                                      child: Text(
                                        'Melbourne',
                                        style: context.textTheme.bodySmall
                                            ?.copyWith(
                                          color: const Color.fromRGBO(
                                              54, 54, 54, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 7.h),
                                    Container(
                                      height: 1,
                                      width: 91.w,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(178, 199, 197, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Image.asset(
                                landingPageMiddleImage,
                                width: 40,
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'CMB',
                                      style: context.textTheme.headlineLarge
                                          ?.copyWith(
                                        fontSize: 40.sp,
                                      ),
                                    ),
                                    SizedBox(height: 7.h),
                                    Padding(
                                      padding: EdgeInsets.only(right: 12.w),
                                      child: Text(
                                        'Colombo',
                                        style: context.textTheme.bodySmall
                                            ?.copyWith(
                                          color: const Color.fromRGBO(
                                              54, 54, 54, 1),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 7.h),
                                    Container(
                                      height: 1,
                                      width: 91.w,
                                      decoration: const BoxDecoration(
                                        color: Color.fromRGBO(178, 199, 197, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 32.h),
                          const TitleRow(
                            firstTitle: 'DEPART',
                            secondTitle: 'RETURN',
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomTextField(
                                label: 'DD/MM/YY',
                                icon: Icons.calendar_month_rounded,
                                readOnly: true,
                                onTap: () => showAppDatePicker(context),
                              ),
                              SizedBox(width: context.width / 4.5),
                              CustomTextField(
                                label: 'DD/MM/YY',
                                icon: Icons.calendar_month_rounded,
                                readOnly: true,
                                onTap: () => showAppDatePicker(context),
                              ),
                            ],
                          ),
                          SizedBox(height: 32.h),
                          const TitleRow(firstTitle: 'PASSENGER & LUGGAGE'),
                          Row(
                            children: const [
                              CustomTextField(
                                label: 'SEAT',
                                icon: Icons.people_rounded,
                              ),
                              SizedBox(width: 20),
                              CustomTextField(
                                label: 'KGs',
                                icon: Icons.luggage_rounded,
                                textInputType: TextInputType.number,
                              ),
                              Spacer(),
                            ],
                          ),
                          SizedBox(height: 32.h),
                          const TitleRow(firstTitle: 'CLASS'),
                          SizedBox(height: 12.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                Class.economy.name,
                                style: context.textTheme.bodyLarge?.copyWith(
                                  color: context.textTheme.bodySmall?.color,
                                  fontSize: 16.sp,
                                ),
                              ),
                              customVerticleDivider(context),
                              Text(
                                Class.bussiness.name,
                                style: context.textTheme.bodyLarge?.copyWith(
                                  fontSize: 16.sp,
                                ),
                              ),
                              customVerticleDivider(context),
                              Text(
                                Class.firstClass.name,
                                style: context.textTheme.bodyLarge?.copyWith(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Material(
                            color: Colors.transparent,
                            child: SlideUpTween(
                              begin: const Offset(0, 20),
                              child: InkWell(
                                onTap: () {
                                  FocusScope.of(context).unfocus();
                                  Navigator.pushNamed(
                                      context, AppRoutes.resultScreenRoute);
                                },
                                borderRadius: BorderRadius.circular(20),
                                child: Ink(
                                  height: 60.h,
                                  decoration: BoxDecoration(
                                    color: context.colorScheme.primary,
                                    borderRadius: BorderRadius.circular(20.r),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Search Flights',
                                      style:
                                          context.textTheme.bodyLarge?.copyWith(
                                        color: const Color(0xffffffff),
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.h),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container customVerticleDivider(BuildContext context) {
    return Container(
      width: 1,
      height: 22,
      decoration: BoxDecoration(
        color: context.colorScheme.onBackground,
      ),
    );
  }

  void showAppDatePicker(BuildContext context) {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 360 * 5),
      ),
    );
    FocusScope.of(context).unfocus();
  }
}
