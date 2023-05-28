import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/widget/tour_data_row.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';

class TourDataTable extends StatelessWidget {
  const TourDataTable({
    super.key,
    required this.data,
  });

  final List<Tour> data;

  @override
  Widget build(BuildContext context) {
    return DataTable(
      headingTextStyle: context.textTheme.bodyLarge?.copyWith(
        color: AppColor.kNeutrals3,
      ),
      showCheckboxColumn: false,
      dataRowHeight: 40,
      dividerThickness: 0,
      horizontalMargin: 32,
      headingRowHeight: 32,
      border: TableBorder.all(color: AppColor.kNeutrals9),
      headingRowColor: const MaterialStatePropertyAll(AppColor.kNeutrals7),
      columns: [
        "ID",
        "ID Bất động sản",
        "Nhân viên xử lí",
        "Phương thức",
        'Liên hệ',
        'Trạng thái',
        "Hành động",
      ]
          .map(
            (e) => DataColumn(
              label: Text(
                e,
                style: context.textTheme.bodyLarge?.copyWith(
                  color: AppColor.kNeutrals3,
                ),
              ),
            ),
          )
          .toList(),
      rows: data
          .mapIndexed((index, item) => TourDataRow(context, index, item))
          .toList(),
    );
  }
}
