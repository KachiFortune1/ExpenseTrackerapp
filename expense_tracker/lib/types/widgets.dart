import 'package:flutter/material.dart';

abstract class WidgetWithTitle extends StatelessWidget {
  final String title;

  const WidgetWithTitle({Key? key, required this.title})
      : super(
          key: key,
        );
}
