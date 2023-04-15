import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stockflow_design_challenge/screens/animations/opacity_tween.dart';
import 'package:stockflow_design_challenge/shared/extentions.dart';

import '../../../models/flight_result.dart';
import '../../../shared/images.dart';
import '../result_screen.dart';

class FlightResultItem extends StatelessWidget {
  const FlightResultItem({
    super.key,
    required this.flightResult,
    required this.index,
  });

  final FlightResult flightResult;
  final int index;

  @override
  Widget build(BuildContext context) {
    return OpacityTween(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        margin: EdgeInsets.only(
          left: 22,
          right: 22,
          top: 20 + (index == 0 ? 5 : 0),
          bottom: index == (flightResults.length - 1) ? 22 : 0,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(27, 17, 27, 5),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              flightResult.airport1Code,
                              style: context.textTheme.titleLarge?.copyWith(
                                fontSize: 28.sp,
                              ),
                            ),
                            Text(
                              flightResult.airport1,
                              style: context.textTheme.bodySmall?.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Image.asset(
                            flightResult.airlineImage,
                            width: 53.w,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              flightResult.airport2Code,
                              style: context.textTheme.titleLarge?.copyWith(
                                fontSize: 28.sp,
                              ),
                            ),
                            Text(
                              flightResult.airport2,
                              style: context.textTheme.bodySmall?.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'DATE',
                              style: context.textTheme.titleSmall?.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              flightResult.date,
                              style: context.textTheme.bodySmall?.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              ellipseImage,
                              height: 24.h,
                              width: 53.w,
                              color: const Color.fromRGBO(0, 110, 212, 1),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${flightResult.flightTime} ${flightResult.time}',
                              style: context.textTheme.titleSmall?.copyWith(
                                fontSize: 10.sp,
                                color: const Color.fromRGBO(54, 54, 54, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              'FLIGHT NO',
                              style: context.textTheme.titleSmall?.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                            Text(
                              flightResult.flightNumber,
                              style: context.textTheme.bodySmall?.copyWith(
                                fontSize: 12.sp,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 17, 27, 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ticket Price',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 10.sp,
                      color: const Color.fromRGBO(172, 172, 172, 1),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    flightResult.price,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 14.sp,
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
