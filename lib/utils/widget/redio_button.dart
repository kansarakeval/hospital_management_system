import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class RadioButtonRS extends StatefulWidget {
  const RadioButtonRS({
    super.key,
    required this.value,
    required this.onChanged,
    required this.title,
    required this.groupValue,
  });

  final int value;
  final int groupValue;
  final ValueChanged<int?> onChanged;
  final String title;

  @override
  State<RadioButtonRS> createState() => _RadioButtonRSState();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('value', value));
    properties.add(IntProperty('groupValue', groupValue));
  }
}

class _RadioButtonRSState extends State<RadioButtonRS> {
  @override
  Widget build(BuildContext context) {
    return RadioListTile<int>(
      value: widget.value,
      title: Text(widget.title),
      groupValue: widget.groupValue,
      onChanged: widget.onChanged,
    );
  }
}
