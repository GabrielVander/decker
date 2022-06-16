import 'package:decker/core/presentation/widgets/main_app_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const double contentPadding = 10.0;
    const double paladinsIconSize = 74.0;
    const double leadingIconLeftPadding = contentPadding;
    const double appBarHeight = paladinsIconSize + 20.0;

    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(appBarHeight),
        child: DeckerAppBar(
          leadingIconLeftPadding: leadingIconLeftPadding,
          paladinsIconSize: paladinsIconSize,
        ),
      ),
      body: Container(),
    );
  }
}
