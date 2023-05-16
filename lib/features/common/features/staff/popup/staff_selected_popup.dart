import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:real_estate_admin_cms/core/data/auth/model/user.dart';
import 'package:real_estate_admin_cms/dependency_injection/dependencies_injection.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/button/button_app.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/dropdown/dropdown_app.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/widget.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:collection/collection.dart';

import '../cubit/staff_selected_cubit.dart';

class StaffSelectedPopup extends StatefulWidget {
  final void Function(User user) onStaffSelected;
  const StaffSelectedPopup({super.key, required this.onStaffSelected});

  @override
  State<StaffSelectedPopup> createState() => _StaffSelectedPopupState();
}

class _StaffSelectedPopupState extends State<StaffSelectedPopup> {
  User? user;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.call<StaffSelectedCubit>()..loadStaffs(),
      child: BlocConsumer<StaffSelectedCubit, StaffSelectedState>(
        listener: (context, state) {
          user = state.staffs.firstOrNull;
        },
        builder: (context, state) {
          return Container(
            constraints: const BoxConstraints(maxWidth: 400),
            decoration: BoxDecoration(
              color: context.colorScheme.background,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                DropdownApp(
                  onChanged: (value) {
                    user = value;
                  },
                  value: state.staffs.firstOrNull,
                  selectedItemBuilder: (context) {
                    return state.staffs
                        .map(
                          (e) => Text(
                            e.fullName,
                            style: context.textTheme.titleMedium?.copyWith(),
                          ),
                        )
                        .toList();
                  },
                  items: state.staffs
                      .map(
                        (e) => DropdownMenuItem<User>(
                          value: e,
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 16),
                            child: Text(
                              e.fullName,
                              style: context.textTheme.titleMedium?.copyWith(),
                            ),
                          ),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IntrinsicWidth(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 16,
                            ),
                          ),
                          onPressed: () {
                            context.pop();
                            if (user != null) {
                              widget.onStaffSelected(user!);
                            }
                          },
                          child: Text(
                            'Giao phó',
                            style: context.textTheme.bodyLarge?.copyWith(
                              color: context.colorScheme.background,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
