import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';

class DropdownApp<T> extends StatelessWidget {
  final List<DropdownMenuItem<T>> items;
  final void Function(T? value)? onChanged;
  final bool? isExpanded;
  final double? paddingHorizontal;
  final Widget? hint;
  final T? value;
  final List<Widget> Function(BuildContext context)? selectedItemBuilder;
  const DropdownApp({
    super.key,
    required this.items,
    this.onChanged,
    this.hint,
    this.selectedItemBuilder,
    this.paddingHorizontal,
    this.value,
    this.isExpanded,
  });

  @override
  Widget build(BuildContext context) {
    final horizontalSpace = paddingHorizontal ?? 16;
    return ButtonTheme(
      alignedDropdown: true,
      padding: EdgeInsets.zero,
      child: DropdownButtonHideUnderline(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
            AppSize.largeRadius,
          ),
          child: Material(
            child: DropdownButtonFormField2<T>(
              isDense: true,
              isExpanded: isExpanded ?? false,
              value: value,
              dropdownStyleData: DropdownStyleData(
                elevation: 0,
                maxHeight: MediaQuery.of(context).size.height / 2,
                padding: EdgeInsets.zero,
                offset: const Offset(0.0, -AppSize.smallHeightDimens),
                decoration: BoxDecoration(
                  color: AppColor.kNeutrals_.shade400,
                  borderRadius: BorderRadius.circular(
                    AppSize.extraRadius,
                  ),
                ),
              ),
              buttonStyleData: ButtonStyleData(
                elevation: 0,
                padding: EdgeInsets.symmetric(
                  horizontal: horizontalSpace,
                ),
                height: 50,
              ),
              iconStyleData: IconStyleData(
                icon: Assets.icons.icArrowDown.svg(
                  height: AppSize.extraWidthDimens,
                  width: AppSize.extraWidthDimens,
                  colorFilter: ColorFilter.mode(
                    AppColor.kNeutrals_.shade600,
                    BlendMode.srcIn,
                  ),
                ),
              ),
              menuItemStyleData: const MenuItemStyleData(
                height: 50,
                padding: EdgeInsets.zero,
              ),
              // dropdownMaxHeight: ,
              // itemPadding:,
              // buttonPadding: EdgeInsets.symmetric(
              //   horizontal: horizontalSpace,
              // ),
              // buttonHeight: 50.h,
              // itemHeight: 50.h,
              // dropdownPadding: EdgeInsets.zero,
              // dropdownElevation: 0,
              hint: hint,
              items: items,
              // icon: Assets.icons.icArrowDown.svg(
              //   height: AppSize.extraWidthDimens,
              //   width: AppSize.extraWidthDimens,
              //   color: AppColor.kNeutrals_.shade600,
              // ),
              // offset: Offset(0.0, -AppSize.smallHeightDimens),
              onChanged: onChanged,
              // dropdownDecoration: BoxDecoration(
              //   color: AppColor.kNeutrals_.shade400,
              //   borderRadius: BorderRadius.circular(
              //     AppSize.extraRadius,
              //   ),
              // ),
              decoration: const InputDecoration().applyDefaults(
                context.theme.inputDecorationTheme.copyWith(
                  contentPadding: EdgeInsets.zero,
                ),
              ),
              selectedItemBuilder: selectedItemBuilder,
            ),
          ),
        ),
      ),
    );
  }
}
