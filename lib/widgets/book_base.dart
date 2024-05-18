//book_base.dart

import 'package:flutter/material.dart';

class BookBase extends StatelessWidget {
  const BookBase(
      {super.key,
      
      required this.child});
 
  final Widget child;
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: 260,
      height: 220,
      margin: const EdgeInsets.only(top:24,bottom: 14),
      decoration: BoxDecoration(
        color: theme.colorScheme.onTertiary,
        ),
      
      child: child,
    );
  }
}