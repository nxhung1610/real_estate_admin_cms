import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/real_estate_detail/real_estate_detail_bloc.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

class WBottomViewerAction extends StatelessWidget {
  const WBottomViewerAction({super.key, required this.item});

  final RealEstate item;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColor.kNeutrals_.withOpacity(0.07),
            blurRadius: 30,
            spreadRadius: 0,
            offset: const Offset(0, -2),
          )
        ],
        color: AppColor.kBackgroundLight,
      ),
      child: SafeArea(
        minimum: EdgeInsets.symmetric(
          vertical: 8.h,
          horizontal: 16.w,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  '${s.price}:',
                  style: context.textTheme.titleMedium?.copyWith(
                    color: AppColor.kNeutrals_.shade800,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Expanded(
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: BlocSelector<RealEstateDetailBloc,
                        RealEstateDetailState, RealEstate?>(
                      selector: (state) {
                        return state.estate;
                      },
                      builder: (context, item) {
                        if (item == null) return const SizedBox.shrink();
                        return Text(
                          NumberFormat.currency(locale: "vi_VN", symbol: 'đ')
                              .format(item.price * (item.area ?? 0))
                              .toString(),
                          style: context.textTheme.titleLarge?.copyWith(
                            color: AppColor.kPrimary1,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
            AppSize.mediumHeightDimens.verticalSpace,
          ],
        ),
      ),
    );
  }
}
