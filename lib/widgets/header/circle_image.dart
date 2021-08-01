import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  final double maxSize;
  const CircleImage(this.maxSize);

  @override
  Widget build(BuildContext context) => Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 3.0),
        ),
        padding: const EdgeInsets.all(10),
        child: ClipOval(
          child: LimitedBox(
            maxHeight: maxSize,
            maxWidth: maxSize,
            child: Image.network(
                'https://media-exp1.licdn.com/dms/image/C4D03AQH_GWXzYBbaCw/profile-displayphoto-shrink_800_800/0/1624741144874?e=1632960000&v=beta&t=a5lwU1VAaRA74vU67HOL6MeKDtTlVQZfQkkNETOv90c'),
          ),
        ),
      );
}
