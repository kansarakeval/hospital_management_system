import 'package:flutter/material.dart';

class ListTileWidget extends StatefulWidget {
  final Text title;
  final Widget leading;
  final Widget trailing;
  final VoidCallback? onTap;

  ListTileWidget({
    Key? key,
    required this.title,
    required this.leading,
    required this.trailing,
    this.onTap,
  }) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: widget.onTap,
      leading: widget.leading,
      title: widget.title,
      trailing: widget.trailing,
    );
  }
}