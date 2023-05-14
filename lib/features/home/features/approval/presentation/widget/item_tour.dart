import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/contact_tour_type.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_status.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:url_launcher/url_launcher.dart';

class ItemTour extends StatelessWidget {
  final Tour item;
  const ItemTour({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: const TableBorder(
        horizontalInside: BorderSide(
          width: 1,
          style: BorderStyle.solid,
        ),
      ),
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(60),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
        3: FlexColumnWidth(),
        4: FlexColumnWidth(),
        5: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          decoration: BoxDecoration(
            color: context.colorScheme.background,
            border: const Border.fromBorderSide(
              BorderSide.none,
            ),
          ),
          children: <Widget>[
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Container(
                height: 40,
                child: Center(
                  child: Text(
                    item.id.toString(),
                    style: context.textTheme.bodyLarge?.copyWith(
                      color: AppColor.kNeutrals3,
                    ),
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text(
                  item.staff?.fullName.toString() ?? '',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: AppColor.kNeutrals3,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text(
                  item.type.title,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: AppColor.kNeutrals3,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: () {
                switch (
                    ContactTourType.fromValue(item.extraData?.split(":")[0])) {
                  case ContactTourType.unknow:
                    return const Text('');
                  case ContactTourType.telegram:
                    return GestureDetector(
                      onTap: () {
                        launchUrl(Uri.parse(
                            'https://t.me/${item.extraData?.split(":")[1].replaceFirst(RegExp('0'), '+84') ?? ''}'));
                      },
                      child: Center(
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
                      ),
                    );
                  case ContactTourType.zalo:
                    return Center(
                      child: Row(
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
                      ),
                    );
                }
              }(),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
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
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: item.status == TourStatus.rejected
                  ? const SizedBox.shrink()
                  : Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4),
                              child: const Icon(Icons.check),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              margin: const EdgeInsets.all(4),
                              padding: const EdgeInsets.all(4),
                              child: const Icon(Icons.close),
                            ),
                          ),
                        ],
                      ),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
