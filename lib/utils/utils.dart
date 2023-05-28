import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';
import 'package:real_estate_admin_cms/utils/string_utils.dart';

extension WidgetExt on Widget {
  SliverToBoxAdapter get sliver => SliverToBoxAdapter(
        child: this,
      );
}

enum RealEstateDirection {
  north,
  northEast,
  northWest,
  west,
  southWest,
  south,
  southEast,
  east;

  String title(BuildContext context) {
    final s = S.of(context);
    switch (this) {
      case RealEstateDirection.north:
        return s.north;
      case RealEstateDirection.northEast:
        return s.northEast;
      case RealEstateDirection.northWest:
        return s.northWest;
      case RealEstateDirection.west:
        return s.west;
      case RealEstateDirection.southWest:
        return s.southWest;
      case RealEstateDirection.south:
        return s.south;
      case RealEstateDirection.southEast:
        return s.southEast;
      case RealEstateDirection.east:
        return s.east;
    }
  }

  static RealEstateDirection? fromString(String value) {
    try {
      return RealEstateDirection.values.byName(value.camelCase!);
    } catch (e) {
      return null;
    }
  }
}
