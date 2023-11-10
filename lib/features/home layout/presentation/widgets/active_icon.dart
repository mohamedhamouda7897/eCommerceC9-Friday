import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';

class ActiveTab extends StatelessWidget {
  final String icon;
  const ActiveTab({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 40.w,
      decoration: ShapeDecoration(
        color: AppColors.primary,
        shape: const OvalBorder(),
      ),
      child: Center(
        child: ImageIcon(
          AssetImage(icon),
          size: 24.sp,
          color: AppColors.secondry,
        ),
      ),
    );
  }
}
