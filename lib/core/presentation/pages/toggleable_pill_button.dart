import 'package:decker/core/presentation/theme/extensions.dart';
import 'package:flutter/material.dart';

class ToggleablePillButton extends StatelessWidget {
  const ToggleablePillButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
        side: BorderSide(
          color: Theme.of(context)
              .extension<ToggleablePillButtonStyle>()!
              .outlineColor!,
        ),
      ),
      child: Text(
        'Today',
        style: TextStyle(
          color: Theme.of(context)
              .extension<ToggleablePillButtonStyle>()!
              .outlineColor,
        ),
      ),
    );
  }
}
