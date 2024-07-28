import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.onTap,
    required this.child,
  });
  final void Function() onTap;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.all(5),
      child: ElevatedButton(
        onPressed: onTap,
        style: ButtonStyle(
          animationDuration: Duration(milliseconds: 500),
          backgroundColor: WidgetStateProperty.resolveWith(
            (states) => states.contains(WidgetState.hovered)
                ? Theme.of(context).colorScheme.secondary
                : Colors.transparent,
          ),
          shape: WidgetStateProperty.resolveWith((states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
          padding: WidgetStateProperty.resolveWith(
              (states) => EdgeInsets.symmetric(horizontal: 20, vertical: 20)),
        ),
        child: child,
      ),
    );
  }
}
