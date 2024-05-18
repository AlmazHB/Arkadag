//card_base
import 'package:flutter/material.dart';

class CardBase extends StatelessWidget {
  const CardBase(
      {super.key,
      required this.width,
      required this.height,
      required this.child});
  final double width;
  final double height;

  final Widget child;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.all(8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: theme.hintColor.withOpacity(0.05),
        borderRadius: BorderRadius.circular(12),
      ),
      child: child,
    );
  }
}
