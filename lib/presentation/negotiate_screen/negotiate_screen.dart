import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';

class NegotiateScreen extends StatelessWidget {
  const NegotiateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroudColor,
        title: Text('Negotiate'),
      ),
    );
  }
}
