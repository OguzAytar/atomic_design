// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:atomic_design/core/components/column/card_column.dart';
import 'package:atomic_design/core/components/row/card_row.dart';

class CardRowColumn extends StatelessWidget {
  const CardRowColumn({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      color: const Color.fromARGB(255, 149, 130, 255),
      child: CardRow(child: CardColumn(child: child)),
    );
  }
}
