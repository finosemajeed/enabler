import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';

class CreateProfileScreen extends StatelessWidget {
  const CreateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: AppBar(
        backgroundColor: backgroudColor,
        title: const Text('Create Profile'),
      ),
    );
  }
}
