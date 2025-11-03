import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color color;
  final Color textColor;
  final VoidCallback? onPressed;

  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
    required this.color,
    required this.textColor,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size.fromHeight(50),
          elevation: 5,
          backgroundColor: color,
          foregroundColor: textColor,
          shadowColor: colorScheme.shadow,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: textTheme.bodyLarge?.copyWith(
                color: textColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(width: 8),
            icon,
          ],
        ),
      ),
    );
  }
}
