import 'package:flutter/material.dart';
import 'package:portfolio_app/constraints.dart';
import 'package:portfolio_app/widgets/header/header_mobile.dart';
import 'package:portfolio_app/widgets/header/header_web_tablet.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => LayoutBuilder(
        builder: (_, constraints) => Scaffold(
          backgroundColor: Colors.black87,
          body: Center(
            child: ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 1400),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36.0),
                child: ListView(
                  children: [
                    const SizedBox(height: 48.0),
                    if (!Constraints.isMobile(constraints.maxWidth))
                      HeaderWebTablet(
                        isWeb: Constraints.isWeb(constraints.maxWidth),
                      ),
                    if (Constraints.isMobile(constraints.maxWidth))
                      HeaderMobile(),
                    const SizedBox(height: 48.0),
                    // Refatorar e colocar em outro lugar
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Divider(
                          color: Colors.white38,
                          thickness: 0.5,
                        ),
                        const SizedBox(height: 24.0),
                        Text(
                          'About Me',
                          style:
                              Theme.of(context).textTheme.headline3!.copyWith(
                                    color: Colors.white,
                                  ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
