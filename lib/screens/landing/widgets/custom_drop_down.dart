import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stockflow_design_challenge/shared/extentions.dart';

class CustomDropdownButton extends StatelessWidget {
  final List<String> items;
  final String selectedItem;

  const CustomDropdownButton({
    super.key,
    required this.items,
    required this.selectedItem,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButton<String>(
      value: selectedItem,
      onChanged: (String? newValue) {},
      iconSize: 0,
      isExpanded: true,
      underline: Container(
        height: 1,
        margin: EdgeInsets.only(top: 7.h),
        width: double.infinity,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(178, 199, 197, 1),
          borderRadius: BorderRadius.circular(100),
        ),
      ),
      items: items.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: EdgeInsets.only(bottom: 7.h),
            child: Center(
              child: Text(
                value,
                style: context.textTheme.bodySmall,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
