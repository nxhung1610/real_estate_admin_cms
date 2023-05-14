import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';
import 'package:real_estate_admin_cms/config/app_color.dart';
import 'package:real_estate_admin_cms/core/data/tour/model/tour.dart';
import 'package:real_estate_admin_cms/features/common/presentation/widget/w_custom_refresh_scroll_view.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/application/approval_bloc.dart';
import 'package:real_estate_admin_cms/features/home/features/approval/presentation/widget/item_tour.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';

class ApprovalPage extends StatefulWidget {
  const ApprovalPage({super.key});

  @override
  State<ApprovalPage> createState() => _ApprovalPageState();
}

class _ApprovalPageState extends State<ApprovalPage> {
  late final PagingController<int, Tour> pageController;
  Completer<bool>? refresh;
  late final ApprovalBloc bloc;
  @override
  void initState() {
    super.initState();
    bloc = context.read<ApprovalBloc>();
    pageController = PagingController(
      firstPageKey: 0,
      invisibleItemsThreshold: 1,
    );
    pageController.addPageRequestListener((pageKey) {
      if (pageKey != 0) {
        bloc.add(ApprovalEvent.onFetch(page: pageKey));
      }
    });
    bloc.add(const ApprovalEvent.onStarted());
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<ApprovalBloc, ApprovalState>(
          listenWhen: (previous, current) =>
              previous.newTours != current.newTours,
          listener: (context, state) {
            if (state.newTours != null) {
              if (state.page == 0) {
                pageController.refresh();
              }
              if (state.canLoadMore) {
                pageController.appendPage(
                  state.newTours!,
                  state.page + 1,
                );
              } else {
                pageController.appendLastPage(
                  state.newTours!,
                );
              }
            }
          },
        ),
        BlocListener<ApprovalBloc, ApprovalState>(
          listener: (context, state) {
            state.status.whenOrNull(
              failure: (value) {
                if (state.page == 0) {
                  pageController.error = value;
                }
              },
              idle: () {
                if (refresh?.isCompleted != true) {
                  refresh?.complete(true);
                  refresh = null;
                }
              },
            );
          },
        ),
      ],
      child: Scaffold(
        body: Column(
          children: [
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
            ),
            Expanded(
              child: WCustomRefreshScrollView(
                onRefresh: () async {
                  refresh = Completer();
                  bloc.add(const ApprovalEvent.onStarted());
                  await refresh?.future;
                },
                children: [
                  PagedSliverList.separated(
                    pagingController: pageController,
                    builderDelegate: PagedChildBuilderDelegate<Tour>(
                      firstPageErrorIndicatorBuilder: (context) {
                        return const Center(
                          child: Text('Có lỗi xảy ra'),
                        );
                      },
                      itemBuilder: (context, item, index) {
                        return ItemTour(item: item);
                      },
                    ),
                    separatorBuilder: (context, index) {
                      return const Divider();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
