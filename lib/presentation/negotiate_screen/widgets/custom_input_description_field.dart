
import 'package:enabler/domain/core/color_config.dart';
import 'package:flutter/material.dart';

class CustomInputDescriptionField extends StatelessWidget {
  const CustomInputDescriptionField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          color: kWhite,
          height: 100,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Type Description',
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
