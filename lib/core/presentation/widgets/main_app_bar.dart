import 'package:decker/resources/resources.dart';
import 'package:flutter/material.dart';

class DeckerAppBar extends StatelessWidget {
  const DeckerAppBar({
    Key? key,
    required this.paladinsIconSize,
    required this.leadingIconLeftPadding,
  }) : super(key: key);

  final double paladinsIconSize;
  final double leadingIconLeftPadding;

  @override
  Widget build(BuildContext context) {
    final double leadingIconWidth = paladinsIconSize + leadingIconLeftPadding;
    final double appBarHeight = paladinsIconSize + 20.0;

    return AppBar(
      backgroundColor: Theme.of(context).canvasColor,
      elevation: 0.0,
      toolbarHeight: appBarHeight,
      title: const Title(),
      leadingWidth: leadingIconWidth,
      leading: PaladinsIcon(
        leadingIconLeftPadding: leadingIconLeftPadding,
        paladinsIconSize: paladinsIconSize,
      ),
      actions: const [
        SettingsAction(),
      ],
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Decker',
      style: Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 40.0),
    );
  }
}

class PaladinsIcon extends StatelessWidget {
  const PaladinsIcon({
    Key? key,
    required this.leadingIconLeftPadding,
    required this.paladinsIconSize,
  }) : super(key: key);

  final double leadingIconLeftPadding;
  final double paladinsIconSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: leadingIconLeftPadding,
        ),
        Image.asset(
          Images.paladinsLogo,
          height: paladinsIconSize,
          width: paladinsIconSize,
        ),
      ],
    );
  }
}

class SettingsAction extends StatelessWidget {
  const SettingsAction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => {},
      icon: Icon(
        Icons.settings,
        color: Theme.of(context).textTheme.titleLarge?.color,
        size: 30.0,
      ),
    );
  }
}
