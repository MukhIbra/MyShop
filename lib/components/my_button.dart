import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  void Function()? onTap;
  Widget? child;

  MyButton({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(12)
        ),
        child: child,
      ),
    );
  }
}
