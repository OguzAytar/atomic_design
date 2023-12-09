// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CameraButon extends StatelessWidget {
  const CameraButon({
    Key? key,
    this.foregroundColor,
    this.backgroundColor,
    required this.onPressed,
    this.child,
  }) : super(key: key);

  final Color? foregroundColor;
  final Color? backgroundColor;
  final VoidCallback onPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
      onPressed: onPressed,
      backgroundColor: backgroundColor,
      child: builCameraContainer(),
    );
  }

  Container builCameraContainer() {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12), color: foregroundColor),
      child: child,
    );
  }
}
