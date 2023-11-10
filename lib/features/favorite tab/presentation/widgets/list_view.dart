import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_strings.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/utils/components/space.dart';

class ListViewss extends StatelessWidget {
  const ListViewss({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemCount: 12,
        itemBuilder: ((context, index) {
          return Container(
            width: 398.w,
            height: 113.h,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: AppColors.bordarColor),
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Row(
              children: [
                Container(
                  width: 120.w,
                  height: 113.h,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    image: const DecorationImage(
                      image: AssetImage(AppImages.temp),
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: AppColors.bordarColor),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
                const HorizontalSpace(8),
                Column(
                  children: [
                    Text(AppStrings.category, style: AppStyles.blueLableStyle),
                    const VerticalSpace(8),
                    Text(AppStrings.category, style: AppStyles.smallLableStyle),
                    const VerticalSpace(8),
                    Text(
                      '${AppStrings.egp} 1280',
                      style: AppStyles.blueLableStyle.copyWith(fontSize: 12),
                    ),
                  ],
                ),
                const HorizontalSpace(8),
                Text(
                  '2000',
                  style: AppStyles.smallLableStyle.copyWith(
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const HorizontalSpace(15),
                Container(
                  width: 90,
                  height: 36,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: AppColors.secondry,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      AppStrings.add,
                      style: AppStyles.smallStyle.copyWith(fontSize: 10),
                    ),
                  ),
                ),
              ],
            ),
          );
        }),
        separatorBuilder: (BuildContext context, int index) {
          return const VerticalSpace(24);
        },
      ),
    );
  }
}
