
import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(150, 50),
            shape: const StadiumBorder(),
            backgroundColor: kRed,
          ),
          child: const Text('Reject'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/negotiate_screen');
          },
          style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(),
            minimumSize: const Size(150, 50),
          ),
          child: const Text('Negotiate'),
        )
      ],
    );
  }
}
