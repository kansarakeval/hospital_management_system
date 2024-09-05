import 'package:flutter/material.dart';
import 'package:hospital_management_system/utils/theme/size.dart';

class CustomElevatedButton extends StatefulWidget {
  final VoidCallback onPressed;
  final String text;
  final TextStyle style;
  final ButtonStyle buttonStyle;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.text,
    required this.style,
    required this.buttonStyle
  }) : super(key: key);

  @override
  _CustomElevatedButtonState createState() => _CustomElevatedButtonState();
}

class _CustomElevatedButtonState extends State<CustomElevatedButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: RS.w,
      height: RS.h*0.07,
      child: ElevatedButton(
        style: widget.buttonStyle,
        onPressed: widget.onPressed,
        child: Text(widget.text, style: widget.style),
      ),
    );
  }
}
