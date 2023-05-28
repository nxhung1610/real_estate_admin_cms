import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/core/data/estate/model/real_estate.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/real_estate_detail/real_estate_detail_bloc.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';
import 'package:real_estate_admin_cms/utils/utils.dart';

class WDirection extends StatelessWidget {
  const WDirection({super.key});

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return BlocSelector<RealEstateDetailBloc, RealEstateDetailState,
        RealEstate?>(
      selector: (state) {
        return state.estate;
      },
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(
            horizontal: AppSize.extraWidthDimens,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                s.direction,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: AppColor.kNeutrals_,
                  fontWeight: FontWeight.w900,
                ),
              ),
              AppSize.largeHeightDimens.verticalSpace,
              Assets.images.imageHouse.image(),
              AppSize.largeHeightDimens.verticalSpace,
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${s.houseFacing} : ${RealEstateDirection.fromString(state?.houseFacing ?? '')?.title(context)}',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColor.kNeutrals_,
                      ),
                    ),
                    AppSize.mediumHeightDimens.verticalSpace,
                    Text(
                      '${s.balconyFacing} : ${RealEstateDirection.fromString(state?.balconyFacing ?? '')?.title(context)}',
                      style: context.textTheme.bodyLarge?.copyWith(
                        color: AppColor.kNeutrals_,
                      ),
                    ),
                  ],
                ),
              ),
              AppSize.largeHeightDimens.verticalSpace,
            ],
          ),
        );
      },
    );
  }
}
