// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import 'package:stockflow_design_challenge/shared/extentions.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final TextInputType textInputType;
  final bool readOnly;
  final VoidCallback? onTap;
  const CustomTextField({
    Key? key,
    required this.label,
    required this.icon,
    this.textInputType = TextInputType.name,
    this.readOnly = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: TextField(
        readOnly: readOnly,
        keyboardType: textInputType,
        style: context.textTheme.bodyLarge,
        onTap: onTap,
        decoration: InputDecoration(
          labelStyle: context.textTheme.bodyLarge,
          labelText: label,
          floatingLabelBehavior: FloatingLabelBehavior.never,
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Icon(
              icon,
              color: context.colorScheme.onBackground,
            ),
          ),
          prefixIconConstraints: const BoxConstraints(
            maxWidth: 30,
          ),
          contentPadding: const EdgeInsets.only(bottom: 10),
        ),
      ),
    );
  }
}
