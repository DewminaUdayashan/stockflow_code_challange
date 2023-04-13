import 'package:flutter/material.dart';
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
              padding: const EdgeInsets.fromLTRB(20, 16, 20, 5),
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
                              style: context.textTheme.titleLarge,
                            ),
                            Text(
                              flightResult.airport1,
                              style: context.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Image.asset(
                            flightResult.airlineImage,
                            width: 53,
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
                              style: context.textTheme.titleLarge,
                            ),
                            Text(
                              flightResult.airport2,
                              style: context.textTheme.bodySmall,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
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
                              style: context.textTheme.titleSmall,
                            ),
                            Text(
                              flightResult.date,
                              style: context.textTheme.bodySmall,
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
                              height: 24,
                            ),
                            const SizedBox(height: 5),
                            Text(
                              '${flightResult.flightTime} ${flightResult.time}',
                              style: context.textTheme.titleSmall
                                  ?.copyWith(fontSize: 10),
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
                              style: context.textTheme.titleSmall,
                            ),
                            Text(
                              flightResult.flightNumber,
                              style: context.textTheme.bodySmall,
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
              padding: const EdgeInsets.fromLTRB(0, 10, 20, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Ticket Price',
                    style: context.textTheme.titleSmall?.copyWith(
                      fontSize: 10,
                      color: const Color.fromRGBO(172, 172, 172, 1),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Text(
                    flightResult.price,
                    style: context.textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
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
