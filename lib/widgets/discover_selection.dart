// lib/widgets/discover_selection.dart

import 'package:flutter/material.dart';
import 'package:travelappui/Model/provider_model.dart';

Widget natureSelection(TranslationProvider provider) {
  int seletedIndex = 0;
  return Stack(
    children: [
      const Positioned(
        bottom: -10,
        left: 45,
        child: Text(
          ".",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 40,
            color: Color(0xFFA36C88),
          ),
        ),
      ),
      SizedBox(
        height: 40,
        child: ListView.builder(
          itemCount: 5, // Number of specific keys
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            String key = 't${index + 1}';
            return Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                provider.translatedTexts[key] ?? '',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: seletedIndex == index
                      ? const Color(0xFFA36C88)
                      : const Color(0xFFE2CBD4),
                ),
              ),
            );
          },
        ),
      ),
    ],
  );
}
