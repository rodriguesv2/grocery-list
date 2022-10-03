import 'package:flutter/material.dart';
import 'package:list_flutter/assets/app_colors.dart';
import 'package:list_flutter/assets/app_text_styles.dart';

class DefaultButtonMolecule extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color backgroundColor;
  final Widget? content;
  final bool isEnabled;

  const DefaultButtonMolecule({
    Key? key,
    required this.text,
    required this.onTap,
    required this.backgroundColor,
    this.content,
    this.isEnabled = true,
  }) : super(key: key);

  factory DefaultButtonMolecule.primary({
    required String text,
    required VoidCallback onTap,
    Widget? content,
    bool isEnabled = true,
  }) {
    return DefaultButtonMolecule(
      text: text,
      onTap: onTap,
      backgroundColor: AppColors.primary,
      content: content,
      isEnabled: isEnabled,
    );
  }

  factory DefaultButtonMolecule.secondary({
    required String text,
    required VoidCallback onTap,
    Widget? content,
    bool isEnabled = true,
  }) {
    return DefaultButtonMolecule(
      text: text,
      onTap: onTap,
      backgroundColor: AppColors.secondary,
      content: content,
      isEnabled: isEnabled,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: isEnabled ? onTap : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: content ?? Text(
          text.toUpperCase(),
          style: AppTextStyles.bodyBold.copyWith(color: AppColors.light),
        ),
      ),
    );
  }
}