import 'package:expense_tracker/types/widgets.dart';
import 'package:flutter/material.dart';

class Settings extends WidgetWithTitle {
  const Settings({
    Key? key,
  }) : super(title: "Settings");

  @override
  Widget build(BuildContext context) {
    return const Text("Settings");
  }
}
