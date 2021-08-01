import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactIcon extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onPressed;

  ContactIcon({
    required this.title,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) => IconButton(
        alignment: Alignment.centerLeft,
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        hoverColor: Colors.black38,
        iconSize: 38,
        splashRadius: 32,
        tooltip: title,
        icon: Icon(
          icon,
          color: Colors.white,
        ),
      );
}

class ContactIcons extends StatelessWidget {
  const ContactIcons();

  @override
  Widget build(BuildContext context) => Wrap(
        spacing: 24.0,
        runSpacing: 12.0,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          ContactIcon(
              title: 'Linkedin',
              icon: FontAwesomeIcons.linkedin,
              onPressed: () {}),
          ContactIcon(
              title: 'Whatsapp',
              icon: FontAwesomeIcons.whatsapp,
              onPressed: () {}),
          ContactIcon(
              title: 'Github', icon: FontAwesomeIcons.github, onPressed: () {}),
          ContactIcon(title: 'E-mail', icon: Icons.mail, onPressed: () {}),
        ],
      );
}
