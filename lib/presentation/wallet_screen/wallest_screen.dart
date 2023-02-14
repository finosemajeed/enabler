import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';

class WalletScreen extends StatelessWidget {
  const WalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroudColor,
        title: const Text('Wallet'),
      ),
      body: Center(
          child: Wrap(
        direction: Axis.vertical,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: const [
          Text(
            'Hey!',
            style: TextStyle(
              fontSize: 30,
              color: kBlack,
            ),
          ),
          Text(
            'We are cooking it up..',
            style: TextStyle(
              fontSize: 30,
              color: kBlack,
            ),
          ),
          Text(
            'Stay Tuned!',
            style: TextStyle(
              fontSize: 30,
              color: kYellow,
            ),
          ),
        ],
      )),
    );
  }
}
