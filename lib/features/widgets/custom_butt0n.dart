import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  final Widget child;
  final VoidCallback? onPressed;
  final Color? foregroundColor;
  final EdgeInsetsGeometry? padding;
  final bool? isExpanded;
  final BorderRadius? borderRadius;
  final double? elevation;

  const CustomButton(
      {Key? key,
      required this.child,
      required this.onPressed,
      this.padding,
      this.isExpanded = true,
      this.foregroundColor,
      this.borderRadius,
      this.elevation})
      : super(key: key);

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
            flex: widget.isExpanded! ? 1 : 0,
            child: ElevatedButton(
              onPressed: widget.onPressed,
              style: ElevatedButton.styleFrom(
                  elevation: widget.elevation,
                  padding: widget.padding ?? const EdgeInsets.all(13),
                  foregroundColor: Theme.of(context).colorScheme.onPrimary,
                  shape: RoundedRectangleBorder(
                      borderRadius:
                          widget.borderRadius ?? BorderRadius.circular(5)),
                  disabledBackgroundColor:
                      Theme.of(context).primaryColor.withAlpha(-200),
                  backgroundColor: Colors.black),
              child: widget.child,
            )),
      ],
    );
  }
}
