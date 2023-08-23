import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:movie_application/ui/utils/colors.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({
    super.key,
    required this.leading,
    required this.title,
    this.icon,
  });

  final String title;
  final String leading;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.primaryBackground.withOpacity(0.4),
      child: ListTile(
        leading: Text(
          leading.toUpperCase(),
          style: const TextStyle(
            fontSize: 18,
          ),
        ),
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            title.toUpperCase(),
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
        ),
        trailing: icon,
      ),
    );
  }
}
