import 'package:flutter/material.dart';
import 'package:stockflow_design_challenge/models/flight_result.dart';
import 'package:stockflow_design_challenge/screens/result/widgets/flight_result_item.dart';
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
                    return FlightResultItem(
                      flightResult: flightResult,
                      index: index,
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
