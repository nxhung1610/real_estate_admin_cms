import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/config/app_size.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/contact_tour_type.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_status.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/features/common/features/staff/popup/staff_selected_popup.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/approval_bloc.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/real_estate_detail/real_estate_detail_bloc.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/popup/reject_tour_popup.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/widget/_w_amenities.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/widget/_w_direction.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/widget/_w_info_house.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/widget/_w_location.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:url_launcher/url_launcher.dart';

class TourDataRow extends DataRow {
  factory TourDataRow(BuildContext context, int index, Tour item) {
    final List<DataCell> cells = [
      _getId(context, index, item),
      _getRealEstateId(context, index, item),
      _getStaff(context, index, item),
      _getTitle(context, index, item),
      _getExtra(context, index, item),
      _getStatus(context, index, item),
      _getAction(context, index, item),
    ];
    return TourDataRow._(
        cells: cells,
        onSelectChanged: (_) {
          showDialog(
            context: context,
            builder: (context) {
              return BlocProvider(
                  create: (context) => getIt.call<RealEstateDetailBloc>(
                      param1: item.realEstate.id.toString()),
                  child: RealEstateDetailDialog(item: item));
            },
          );
        });
  }

  const TourDataRow._({required super.cells, super.onSelectChanged});

  static DataCell _getId(BuildContext context, int index, Tour item) {
    return DataCell(
      Text(
        item.id.toString(),
        style: context.textTheme.bodyLarge?.copyWith(
          color: AppColor.kNeutrals3,
        ),
      ),
    );
  }

  static DataCell _getRealEstateId(BuildContext context, int index, Tour item) {
    return DataCell(
      Text(
        item.realEstate.id.toString(),
        style: context.textTheme.bodyLarge?.copyWith(
          color: AppColor.kNeutrals3,
        ),
      ),
    );
  }

  static DataCell _getStaff(BuildContext context, int index, Tour item) {
    return DataCell(
      Text(
        item.staff?.fullName.toString() ?? 'CHƯA CÓ',
        style: context.textTheme.bodyLarge?.copyWith(
          color: AppColor.kNeutrals3,
        ),
      ),
    );
  }

  static DataCell _getTitle(BuildContext context, int index, Tour item) {
    return DataCell(
      Text(
        item.type.title,
        style: context.textTheme.bodyLarge?.copyWith(
          color: AppColor.kNeutrals3,
        ),
      ),
    );
  }

  static DataCell _getExtra(BuildContext context, int index, Tour item) {
    final tourType = ContactTourType.fromValue(item.extraData?.split(":")[0]);
    late final Widget child;
    switch (tourType) {
      case ContactTourType.unknow:
        child = const Text('');
        break;
      case ContactTourType.telegram:
        child = GestureDetector(
          onTap: () {
            launchUrl(Uri.parse(
                'https://t.me/${item.extraData?.split(":")[1].replaceFirst(RegExp('0'), '+84') ?? ''}'));
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.images.telegram.image(width: 24, height: 24),
              const SizedBox(
                width: 8,
              ),
              Text(
                item.extraData?.split(":")[1] ?? '',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: AppColor.kNeutrals3,
                ),
              ),
            ],
          ),
        );
        break;
      case ContactTourType.zalo:
        child = Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Assets.images.zalo.image(width: 24, height: 24),
            const SizedBox(
              width: 8,
            ),
            Text(
              item.extraData?.split(":")[1] ?? '',
              style: context.textTheme.bodyLarge?.copyWith(
                color: AppColor.kNeutrals3,
              ),
            ),
          ],
        );
        break;
    }
    return DataCell(
      child,
    );
  }

  static DataCell _getStatus(BuildContext context, int index, Tour item) {
    return DataCell(
      Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: () {
            switch (item.status) {
              case TourStatus.waiting:
                return Colors.amber.shade200;
              case TourStatus.processing:
                return Colors.amber.shade200;
              case TourStatus.approved:
                return Colors.greenAccent;
              case TourStatus.rejected:
                return Colors.redAccent;
            }
          }(),
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        margin: const EdgeInsets.all(4),
        child: Text(
          item.status.title,
          style: context.textTheme.bodyLarge?.copyWith(
            color: AppColor.kNeutrals11,
          ),
        ),
      ),
    );
  }

  static DataCell _getAction(BuildContext context, int index, Tour item) {
    final isExamined =
        [TourStatus.approved, TourStatus.rejected].contains(item.status);

    return DataCell(
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              if (isExamined) {
                return;
              }
              showDialog(
                context: context,
                builder: (_) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: StaffSelectedPopup(
                      onStaffSelected: (user) {
                        context.read<ApprovalBloc>().add(
                              ApprovalEvent.onAssignStaff(
                                item.id,
                                user.id,
                              ),
                            );
                      },
                    ),
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.greenAccent.withOpacity(isExamined ? 0.3 : 1),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(4),
              child: const Icon(
                Icons.check,
                color: AppColor.kNeutrals11,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              if (isExamined) {
                return;
              }
              showDialog(
                context: context,
                builder: (_) {
                  return Dialog(
                    backgroundColor: Colors.transparent,
                    child: RejectTourPopup(
                      onReject: (String value) {
                        context.read<ApprovalBloc>().add(
                              ApprovalEvent.onReject(
                                item.id,
                                value,
                              ),
                            );
                      },
                    ),
                  );
                },
              );
            },
            child: Container(
              decoration: BoxDecoration(
                color: Colors.redAccent.withOpacity(isExamined ? 0.3 : 1),
                borderRadius: BorderRadius.circular(8),
              ),
              margin: const EdgeInsets.all(4),
              padding: const EdgeInsets.all(4),
              child: const Icon(
                Icons.close,
                color: AppColor.kNeutrals11,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RealEstateDetailDialog extends StatelessWidget {
  const RealEstateDetailDialog({Key? key, required this.item})
      : super(key: key);
  final Tour item;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: AppColor.kNeutrals11,
        ),
        width: 0.3.sw,
        height: 0.6.sh,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: AppSize.largeHeightDimens.verticalSpace,
            ),
            const SliverToBoxAdapter(
              child: WInfoHouse(),
            ),
            SliverToBoxAdapter(
              child: AppSize.largeHeightDimens.verticalSpace,
            ),
            const SliverToBoxAdapter(
              child: WAmenities(),
            ),
            SliverToBoxAdapter(
              child: AppSize.largeHeightDimens.verticalSpace,
            ),
            const SliverToBoxAdapter(
              child: WDirection(),
            ),
            SliverToBoxAdapter(
              child: AppSize.extraHeightDimens.verticalSpace,
            ),
            const SliverToBoxAdapter(
              child: WLocation(),
            ),
            SliverToBoxAdapter(
              child: AppSize.extraHeightDimens.verticalSpace,
            ),
          ],
        ),
      ),
    );
  }
}
