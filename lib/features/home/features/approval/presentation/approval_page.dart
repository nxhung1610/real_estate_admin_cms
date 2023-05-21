import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/contact_tour_type.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_status.dart';
import 'package:real_estate_admin_cms/core/data/tour/enum/tour_type.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/widget.dart';
import 'package:real_estate_admin_cms/features/common/presentation/widget/w_custom_refresh_scroll_view.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/approval_bloc.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/widget/item_tour.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:dartz/dartz.dart' as dartz;

class ApprovalPage extends StatefulWidget {
  const ApprovalPage({super.key});

  @override
  State<ApprovalPage> createState() => _ApprovalPageState();
}

class _ApprovalPageState extends State<ApprovalPage> {
  // late final PagingController<int, Tour> pageController;
  // Completer<bool>? refresh;
  late final ApprovalBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<ApprovalBloc>();
    // pageController = PagingController(
    //   firstPageKey: 0,
    //   invisibleItemsThreshold: 1,
    // );
    // pageController.addPageRequestListener((pageKey) {
    //   if (pageKey != 0) {
    //     bloc.add(ApprovalEvent.onFetch(page: pageKey));
    //   }
    // });
    bloc.add(const ApprovalEvent.onStarted());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            child: Row(
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Nhân viên',
                      style: context.textTheme.titleSmall,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: 170,
                      child: BlocSelector<ApprovalBloc, ApprovalState,
                          dartz.Tuple2<User?, List<User>>>(
                        selector: (state) {
                          return dartz.Tuple2(state.staffFilter, state.staffs);
                        },
                        builder: (context, state) {
                          final staffs = [null, ...state.value2];
                          final selectedStaff = state.value1;
                          return DropdownApp(
                            isExpanded: true,
                            onChanged: (value) {
                              bloc.add(
                                  ApprovalEvent.onStaffFilterChange(value));
                            },
                            value: selectedStaff,
                            selectedItemBuilder: (context) {
                              return staffs
                                  .map(
                                    (e) => Text(
                                      e?.fullName ?? 'Tất cả',
                                      style: context.textTheme.titleMedium
                                          ?.copyWith(),
                                      overflow: TextOverflow.visible,
                                      maxLines: 1,
                                    ),
                                  )
                                  .toList();
                            },
                            items: staffs
                                .map(
                                  (e) => DropdownMenuItem<User>(
                                    value: e,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Text(
                                        e?.fullName ?? 'Tất cả',
                                        style: context.textTheme.titleMedium
                                            ?.copyWith(),
                                        overflow: TextOverflow.visible,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Trạng thái',
                      style: context.textTheme.titleSmall,
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    SizedBox(
                      width: 170,
                      child: BlocSelector<ApprovalBloc, ApprovalState,
                          dartz.Tuple2<TourStatus?, List<TourStatus>>>(
                        selector: (state) {
                          return dartz.Tuple2(
                            state.tourStatus,
                            TourStatus.values,
                          );
                        },
                        builder: (context, state) {
                          final tourStatuses = [null, ...state.value2];
                          final tourStatus = state.value1;
                          return DropdownApp(
                            isExpanded: true,
                            onChanged: (value) {
                              bloc.add(
                                ApprovalEvent.onContactTourStatusChange(value),
                              );
                            },
                            value: tourStatus,
                            selectedItemBuilder: (context) {
                              return tourStatuses
                                  .map(
                                    (e) => Text(
                                      e?.title ?? 'Tất cả',
                                      style: context.textTheme.titleMedium
                                          ?.copyWith(),
                                      overflow: TextOverflow.visible,
                                      maxLines: 1,
                                    ),
                                  )
                                  .toList();
                            },
                            items: tourStatuses
                                .map(
                                  (e) => DropdownMenuItem<TourStatus>(
                                    value: e,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16),
                                      child: Text(
                                        e?.title ?? 'Tất cả',
                                        style: context.textTheme.titleMedium
                                            ?.copyWith(),
                                        overflow: TextOverflow.visible,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Table(
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
                          'ID',
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
                        'Nhân viên',
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
                        'Phương thức',
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
                        '',
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: AppColor.kNeutrals11,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: BlocSelector<ApprovalBloc, ApprovalState, bool>(
              selector: (state) {
                return state.shimmer;
              },
              builder: (context, state) {
                if (state) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }

                return BlocSelector<ApprovalBloc, ApprovalState, List<Tour>>(
                  selector: (state) {
                    return state.tours;
                  },
                  builder: (context, state) {
                    return ListView.separated(
                      itemBuilder: (context, index) {
                        return ItemTour(item: state[index]);
                      },
                      separatorBuilder: (context, index) {
                        return const Divider(
                          height: 0,
                        );
                      },
                      itemCount: state.length,
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
