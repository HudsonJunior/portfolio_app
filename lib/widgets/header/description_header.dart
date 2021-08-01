import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_app/widgets/header/contact_icon.dart';

class DescriptionHeader extends StatelessWidget {
  const DescriptionHeader();

  @override
  Widget build(BuildContext context) {
    final descriptionGroup = AutoSizeGroup();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AutoSizeText(
          'Hudson Junior',
          style: Theme.of(context).textTheme.headline3!.copyWith(
                color: Colors.white,
              ),
          maxLines: 1,
        ),
        AutoSizeText(
          'Mobile developer and Computer Scientist',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white70,
              ),
          maxLines: 2,
          group: descriptionGroup,
        ),
        const SizedBox(height: 48.0),
        AutoSizeText(
          'Developing quality cross-platform applications with Flutter.',
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: Colors.white70,
              ),
          maxLines: 2,
          group: descriptionGroup,
        ),
        const SizedBox(height: 48.0),
        AutoSizeText(
          'Contact-me',
          style: Theme.of(context).textTheme.headline6!.copyWith(
                color: Colors.white,
              ),
          textAlign: TextAlign.start,
          maxLines: 1,
        ),
        const SizedBox(height: 8.0),
        const ContactIcons(),
      ],
    );
  }
}
