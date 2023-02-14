import 'package:enabler/domain/core/color_config.dart';
import 'package:enabler/presentation/job_details_screen/widgets/job_details_card.dart';
import 'package:enabler/presentation/negotiate_screen/widgets/custom_input_description_field.dart';
import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class NegotiateScreen extends StatelessWidget {
  const NegotiateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroudColor,
      appBar: AppBar(
        elevation: 0,
        actions: const [Icon(Icons.more_vert)],
        backgroundColor: backgroudColor,
        title: const Text('Negotiate'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const JobDetailsCard(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Description",
                style: TextStyle(
                  fontSize: 24,
                  color: kWhite.withOpacity(0.8),
                ),
              ),
            ),
            const CustomInputDescriptionField(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Type your amount",
                style: TextStyle(
                  fontSize: 18,
                  color: kWhite.withOpacity(0.8),
                ),
              ),
            ),
            SizedBox(
              width: 100,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    prefixText: '₹',
                    prefixStyle: TextStyle(
                      color: kWhite.withOpacity(0.6),
                      fontSize: 28,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SliderButton(
                  backgroundColor: kYellow,
                  radius: 80,
                  label: const Text('SWIPE TO CONFIRM'),
                  action: () {},
                  icon: const Icon(Icons.navigate_next, size: 50),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
