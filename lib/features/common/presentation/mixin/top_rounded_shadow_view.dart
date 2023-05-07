import 'package:flutter/material.dart';

mixin TopRoundedShadowContainer {
  Widget topRounedCornerWithShadow(
    BuildContext context, {
    List<BoxShadow>? shadows,
    required Widget child,
  }) {
    return ClipRRect(
      child: Container(
        margin: const EdgeInsets.only(top: 4),
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
            boxShadow: shadows ??
                [
                  const BoxShadow(
                    offset: Offset(0, -1),
                    color: Color.fromRGBO(0, 53, 84, 0.07),
                    blurRadius: 3,
                  ),
                  const BoxShadow(
                    offset: Offset(2, 4),
                    color: Color.fromRGBO(0, 53, 84, 0.08),
                    blurRadius: 17,
                  ),
                ],
            color: Colors.white,
          ),
          child: child,
        ),
      ),
    );
  }
}
