import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/features/app/presentation/widgets/widget.dart';

class RejectTourPopup extends StatefulWidget {
  const RejectTourPopup({super.key, required this.onReject});
  final void Function(String value) onReject;

  @override
  State<RejectTourPopup> createState() => _RejectTourPopupState();
}

class _RejectTourPopupState extends State<RejectTourPopup> {
  final TextEditingController controller = TextEditingController();
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      child: Column(
        children: [
          InputPrimaryForm(
            controller: controller,
          ),
          const SizedBox(
            height: 24,
          ),
          Align(
            child: ButtonApp(
              label: 'Xác nhận',
              onPressed: () {
                widget.onReject.call(controller.text);
              },
              type: ButtonType.primary,
              size: ButtonSize.small,
            ),
          )
        ],
      ),
    );
  }
}
