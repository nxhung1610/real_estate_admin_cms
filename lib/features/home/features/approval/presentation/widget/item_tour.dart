import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';

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
        // 5: FlexColumnWidth(),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: <TableRow>[
        TableRow(
          decoration: const BoxDecoration(
            color: AppColor.kNeutrals5,
            border: Border.fromBorderSide(
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
                      color: AppColor.kNeutrals11,
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
                    color: AppColor.kNeutrals11,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text(
                  item.status.name,
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: AppColor.kNeutrals11,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text(
                  'Trạng thái',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: AppColor.kNeutrals11,
                  ),
                ),
              ),
            ),
            TableCell(
              verticalAlignment: TableCellVerticalAlignment.middle,
              child: Center(
                child: Text(
                  'Liên hệ',
                  style: context.textTheme.bodyLarge?.copyWith(
                    color: AppColor.kNeutrals11,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
