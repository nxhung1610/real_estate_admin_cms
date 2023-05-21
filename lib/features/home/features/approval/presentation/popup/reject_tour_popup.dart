import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/widget.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';
import 'package:real_estate_admin_cms/languages/generated/l10n.dart';

class RejectTourPopup extends StatefulWidget {
  const RejectTourPopup({super.key, required this.onReject});
  final void Function(String value) onReject;

  @override
  State<RejectTourPopup> createState() => _RejectTourPopupState();
}

class _RejectTourPopupState extends State<RejectTourPopup> {
  final TextEditingController controller = TextEditingController();
  String? reason;

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        reason = controller.text;
      });
    });
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Container(
      width: 400,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        color: context.colorScheme.background,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InputPrimaryForm(
            hint: s.reason,
            controller: controller,
          ),
          const SizedBox(
            height: 24,
          ),
          Align(
            child: ButtonApp(
              label: 'Xác nhận',
              onPressed: reason?.trim().isNotEmpty == true
                  ? () {
                      Navigator.of(context).pop();
                      widget.onReject.call(controller.text);
                    }
                  : null,
              type: ButtonType.primary,
              size: ButtonSize.small,
            ),
          )
        ],
      ),
    );
  }
}
