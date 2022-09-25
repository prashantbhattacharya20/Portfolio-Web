import 'package:flutter/material.dart';
import '../../../components/animated_counter.dart';
import '../../../constants.dart';

class HighlightsInfo extends StatelessWidget {
  const HighlightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Highlight(
            counter: AnimatedCounter(value: 5, text: "+"),
            label: "GitHub Projects",
          ),
          Highlight(
            counter: AnimatedCounter(value: 50, text: "+"),
            label: "LinkedIn Connections",
          ),
          Highlight(
            counter: AnimatedCounter(value: 2, text: " ",),
            label: "Research Paper Implementation",
          ),
          Highlight(
            counter: AnimatedCounter(value: 15, text: "+"),
            label: "Stars",
          ),
        ],
      ),
    );
  }
}

class Highlight extends StatelessWidget {
  const Highlight({
    Key? key, 
    required this.counter, 
    this.label,
  }) : super(key: key);

  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(width: defaultPadding),
        Text(
          label!,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}