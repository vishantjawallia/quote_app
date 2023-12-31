import 'package:flutter/material.dart';
import 'package:get/get.dart';

class QuoteBoxed extends StatelessWidget {
  final String? name;
  final Color? color;
  final String? author;
  final VoidCallback? authorOnTap;

  const QuoteBoxed({
    super.key,
    required this.name,
    required this.author,
    required this.color,
    this.authorOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 310,
          height: 170,
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 10),
          child: Text(
            name ?? "People Often Say That Motivation Doesn't Last. Well, Neither Does Bathing -- That's Why We Recommend It Daily.",
            style: TextStyle(
              fontSize: Get.textTheme.headlineSmall!.fontSize! + 1,
              fontWeight: FontWeight.w800,
              height: 1.46,
              color: color ?? Colors.blue.shade700,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 30),
          child: GestureDetector(
            onTap: author != null ? authorOnTap : null,
            child: Text(
              "- ${author ?? "Vishant Jawallia"}",
              style: TextStyle(
                fontSize: Get.textTheme.headlineSmall!.fontSize,
                fontWeight: FontWeight.w700,
                height: 1.53,
                color: Get.textTheme.headlineSmall!.color,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }
}
