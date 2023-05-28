import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

enum TabType {
  // home,
  bid,
  realEstateApproval,
  tourApproval;


  String getTitle(BuildContext context) {
    final s = S.of(context);
    final titles = {
      bid: s.bid,
      realEstateApproval: s.realEstate,
      tourApproval: s.tour,
    };
    return titles[this]!;
  }

  Widget getIcon(BuildContext context) {
    final icons = {
      bid: Assets.icons.icBid.svg(
        colorFilter: ColorFilter.mode(
          context.colorScheme.background,
          BlendMode.srcIn,
        ),
      ),
      realEstateApproval: Assets.icons.icHome2.svg(
        colorFilter: ColorFilter.mode(
          context.colorScheme.background,
          BlendMode.srcIn,
        ),
      ),
      tourApproval: Assets.icons.icQuality.svg(
        colorFilter: ColorFilter.mode(
          context.colorScheme.background,
          BlendMode.srcIn,
        ),
      ),
    };
    return icons[this]!;
  }
}
