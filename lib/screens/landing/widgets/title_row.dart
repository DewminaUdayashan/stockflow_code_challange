// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:stockflow_design_challenge/shared/extentions.dart';

class TitleRow extends StatelessWidget {
  final String firstTitle;
  final String? secondTitle;
  const TitleRow({
    Key? key,
    required this.firstTitle,
    this.secondTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          firstTitle,
          style: context.textTheme.titleSmall,
        ),
        if (secondTitle != null) ...[
          const Spacer(),
          Text(
            secondTitle!,
            style: context.textTheme.titleSmall,
          ),
        ]
      ],
    );
  }
}
