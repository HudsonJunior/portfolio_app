import 'package:flutter/material.dart';

import 'package:portfolio_app/widgets/header/circle_image.dart';
import 'package:portfolio_app/widgets/header/description_header.dart';

class HeaderWebTablet extends StatelessWidget {
  const HeaderWebTablet({
    required this.isWeb,
  });

  final bool isWeb;
  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleImage(
            isWeb ? 220 : 180,
          ),
          const SizedBox(width: 108.0),
          Flexible(child: const DescriptionHeader()),
        ],
      );
}
