import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/header/circle_image.dart';
import 'package:portfolio_app/widgets/header/description_header.dart';

class HeaderMobile extends StatelessWidget {
  const HeaderMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          const CircleImage(150),
          const SizedBox(height: 48.0),
          const DescriptionHeader(),
        ],
      );
}
