import 'package:flutter/material.dart';
import 'package:stockflow_design_challenge/models/flight_result.dart';
import 'package:stockflow_design_challenge/shared/extentions.dart';
import 'package:stockflow_design_challenge/shared/images.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colorScheme.background,
      appBar: AppBar(
        title: Text(
          'Flights',
          style: context.textTheme.headlineMedium,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              '4 flights available from Melbourne to Colombo',
              style: context.textTheme.bodyMedium,
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(25),
              ),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: context.colorScheme.primary,
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(25),
                  ),
                ),
                child: ListView.builder(
                  itemCount: flightResults.length,
                  itemBuilder: (context, index) {
                    final flightResult = flightResults[index];
                    return Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                          width: 52,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            ellipseImage,
                                            height: 24,
                                          ),
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
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
                                    color:
                                        const Color.fromRGBO(172, 172, 172, 1),
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
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final flightResults = [
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Melbuorne',
    airport1Code: 'MLB',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'APR 20',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
  FlightResult(
    airport1: 'Jakarta',
    airport1Code: 'CGK',
    airport2: 'London',
    airport2Code: 'LCY',
    airlineImage: emiratesImage,
    date: 'DES 19',
    flightNumber: 'KB765',
    price: 'IDR 300,000',
    flightTime: '1h 35min',
    time: '8.35AM',
  ),
];
