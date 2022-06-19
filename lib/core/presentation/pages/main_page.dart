import 'package:decker/core/presentation/theme/extensions.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(contentPadding),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Popular Builds',
                  style: Theme.of(context)
                      .extension<DeckerTextStyle>()!
                      .sectionNameStyle,
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: const [
                  ToggleablePillButton(
                    label: 'Today',
                    toggled: true,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ToggleablePillButton(
                    label: 'This Week',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ToggleablePillButton(
                    label: 'This Month',
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  ToggleablePillButton(
                    label: 'All Time',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ToggleablePillButton extends StatelessWidget {
  final bool toggled;
  final String label;

  const ToggleablePillButton({
    Key? key,
    this.toggled = false,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ToggleablePillButtonStyle toggleablePillButtonStyle =
        Theme.of(context).extension<ToggleablePillButtonStyle>()!;

    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        backgroundColor: toggled ? toggleablePillButtonStyle.fillColor : null,
        side: BorderSide(
          color: toggleablePillButtonStyle.outlineColor!,
        ),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: toggled
              ? toggleablePillButtonStyle.fillTextColor
              : toggleablePillButtonStyle.outlineColor,
        ),
      ),
    );
  }
}
