import 'package:flutter/material.dart';

class FilterBase extends StatelessWidget {
  const FilterBase(
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
     
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: theme.colorScheme.onTertiary,
       
        borderRadius: const BorderRadius.only(

          bottomRight: Radius.circular(48),
        ),
        
      ),
      child: child,
    );
  }
}
