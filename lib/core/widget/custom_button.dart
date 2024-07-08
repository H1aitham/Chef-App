
import 'package:chef_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.height = 48,
    this.width = double.infinity,
    super.key,
    required this.onPressed,
    this.background,
    required this.text,
  });
  final double? height;
  final double? width;
  final VoidCallback onPressed;
  final Color? background;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width!.w,
      height: height!.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: Theme.of(context).elevatedButtonTheme.style!.copyWith(
              backgroundColor:
                  MaterialStateProperty.all(background ?? AppColors.primary),
            ),
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: AppColors.white)),
      ),
    );
  }
}
