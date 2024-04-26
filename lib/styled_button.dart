import 'package:flutter/material.dart';

class StyledButton extends StatelessWidget {
  const StyledButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.disabled = false,
  });

  final void Function() onPressed;
  final Widget child;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor: Colors.brown[800],
          disabledBackgroundColor: Colors.brown[200],
          disabledForegroundColor: Colors.brown[900],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: disabled ? null : onPressed,
        child: child);
  }
}

class StyledButtonText extends StatelessWidget {
  const StyledButtonText(this.text, {super.key});

  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
