// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardRow extends StatelessWidget {
  const CardRow({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Spacer(
          flex: 1,
        ),
        Expanded(
          flex: 19,
          child: child,
        ),
        const Spacer(
          flex: 1,
        )
      ],
    );
  }
}
