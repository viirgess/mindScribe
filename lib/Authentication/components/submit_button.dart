import 'package:flutter/material.dart';
import 'package:mind_scribe/utils/color_source.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  const SubmitButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorsSourceApp.blue,
        borderRadius: BorderRadius.circular(32),
      ),
      child: Padding(
        padding: const EdgeInsets.all(11.0),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
