import 'package:flutter/material.dart';
import 'package:yemeni_jops/core/constants/color_constants.dart';

class MyTextFiled extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscuretext;
  final String text;
  final Widget suffixIcon;
  final Widget? prefixIcon;

  const MyTextFiled({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscuretext,
    required this.text,
    required this.suffixIcon,
    this.prefixIcon,
  });

  @override
  State<MyTextFiled> createState() => _MyTextFiledState();
}

class _MyTextFiledState extends State<MyTextFiled> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    final labelStyle =
        textTheme.labelLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: textTheme.labelLarge?.color ?? colorScheme.onSurface,
        ) ??
        TextStyle(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).colorScheme.onSurface,
        );

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            widget.text,
            style: TextStyle(color: theme.textTheme.bodySmall?.color),
          ),
          const SizedBox(height: 10),
          SizedBox(
            height: 50,
            width: double.infinity,
            child: TextFormField(
              textAlign: TextAlign.right,
              controller: widget.controller,
              obscureText: widget.obscuretext,
              decoration: InputDecoration(
                filled: true,
                fillColor: colorScheme.surface,
                suffixIcon: widget.suffixIcon,
                suffixIconColor: colorScheme.onSurface,
                prefixIcon: widget.prefixIcon,
                prefixIconColor: colorScheme.onSurface,
                contentPadding: const EdgeInsets.symmetric(
                  vertical: 14,
                  horizontal: 12,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(15),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: colorScheme.primary),
                ),
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  color: colorScheme.onSurface.withOpacity(0.7),
                  fontWeight: FontWeight.bold,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: colorScheme.primary),
                ),
              ),
              style: textTheme.bodyLarge?.copyWith(
                color: colorScheme.onSurface,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
