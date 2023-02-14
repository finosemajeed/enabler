import 'package:enabler/presentation/widgets/custom_job_tile.dart';
import 'package:flutter/material.dart';

class PendingPage extends StatelessWidget {
  const PendingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: const [
        CustomJobTile(),
        CustomJobTile(),
        CustomJobTile(),
        CustomJobTile(),
      ],
    );
  }
}
