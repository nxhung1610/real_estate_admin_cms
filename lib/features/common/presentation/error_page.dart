import 'package:flutter/material.dart';
import 'package:real_estate_admin_cms/assets/assets.gen.dart';
import 'package:real_estate_admin_cms/helper/extensions/context.dart';

class ErrorPage extends StatefulWidget {
  const ErrorPage({super.key});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.background,
        surfaceTintColor: context.colorScheme.background,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Assets.icons.icError.svg(
                width: 300,
              ),
              const SizedBox(
                height: 24,
              ),
              Text(
                'Không tìm thấy trang',
                style: context.textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 24,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
