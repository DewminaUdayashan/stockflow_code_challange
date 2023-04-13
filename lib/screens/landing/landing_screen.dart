import 'package:flutter/material.dart';
import 'package:stockflow_design_challenge/screens/animations/opacity_tween.dart';
import 'package:stockflow_design_challenge/screens/landing/widgets/custom_drop_down.dart';
import 'package:stockflow_design_challenge/screens/landing/widgets/custom_text_field.dart';
import 'package:stockflow_design_challenge/screens/landing/widgets/header.dart';
import 'package:stockflow_design_challenge/screens/landing/widgets/title_row.dart';
import 'package:stockflow_design_challenge/shared/app_routes.dart';
import 'package:stockflow_design_challenge/shared/enums.dart';
import 'package:stockflow_design_challenge/shared/extentions.dart';
import 'package:stockflow_design_challenge/shared/images.dart';

import '../animations/slide_up_tween.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: SingleChildScrollView(
        child: SizedBox(
          height: context.height,
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// avoiding status bar
              SizedBox(height: context.paddingTop),

              /// header
              const OpacityTween(child: Header()),

              /// body
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: context.colorScheme.background,
                    borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(25),
                    ),
                  ),
                  padding: const EdgeInsets.all(25),
                  child: OpacityTween(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const TitleRow(
                          firstTitle: 'FROM',
                          secondTitle: 'TO',
                        ),
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'MLB',
                              style: context.textTheme.headlineLarge,
                            ),
                            Image.asset(
                              landingPageMiddleImage,
                              width: 40,
                            ),
                            Text(
                              'CMB',
                              style: context.textTheme.headlineLarge,
                            ),
                          ],
                        ),
                        Row(
                          children: const [
                            Expanded(
                              child: CustomDropdownButton(
                                items: ['Melbourne', 'Colombo'],
                                selectedItem: 'Melbourne',
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: SizedBox.shrink(),
                            ),
                            Expanded(
                              child: CustomDropdownButton(
                                items: ['Melbourne', 'Colombo'],
                                selectedItem: 'Colombo',
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
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
                              onTap: () => showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  const Duration(days: 360 * 5),
                                ),
                              ),
                            ),
                            SizedBox(width: context.width / 4.5),
                            CustomTextField(
                              label: 'DD/MM/YY',
                              icon: Icons.calendar_month_rounded,
                              readOnly: true,
                              onTap: () => showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime.now(),
                                lastDate: DateTime.now().add(
                                  const Duration(days: 360 * 5),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30),
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
                        const SizedBox(height: 30),
                        const TitleRow(firstTitle: 'CLASS'),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              Class.economy.name,
                              style: context.textTheme.bodyLarge?.copyWith(
                                color: context.textTheme.bodySmall?.color,
                              ),
                            ),
                            customVerticleDivider(context),
                            Text(
                              Class.bussiness.name,
                              style: context.textTheme.bodyLarge,
                            ),
                            customVerticleDivider(context),
                            Text(
                              Class.firstClass.name,
                              style: context.textTheme.bodyLarge,
                            ),
                          ],
                        ),
                        const Spacer(),
                        Material(
                          color: Colors.transparent,
                          child: SlideUpTween(
                            begin: const Offset(0, 20),
                            child: InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, AppRoutes.resultScreenRoute),
                              borderRadius: BorderRadius.circular(20),
                              child: Ink(
                                height: 60,
                                decoration: BoxDecoration(
                                  color: context.colorScheme.primary,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Text(
                                    'Search Flights',
                                    style:
                                        context.textTheme.bodyLarge?.copyWith(
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
}
