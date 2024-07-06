import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/HomePage/myhome_page.dart';
import 'package:travelappui/Model/provider_model.dart';

class PopularCategories extends StatefulWidget {
  const PopularCategories({
    super.key,
  });

  @override
  State<PopularCategories> createState() => _PopularCategoriesState();
}

// Widget Textt(TranslationProvider provider, String key, {TextStyle? style}) {
//   return Consumer<TranslationProvider>(
//   builder: (context, provider, child) {
//   return Text(
//     provider.translatedTexts[key] ?? '',
//     style: style, // Apply the provided style
//   );
//   },
// );
// }

class _PopularCategoriesState extends State<PopularCategories> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0, left: 20, top: 40),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Display translated 'Popular Category' text
              Consumer<TranslationProvider>(
                builder: (context, provider, child) {
                  return Textt(
                    provider,
                    'popularCategory',
                    style: const TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue), // Example style
                  );
                },
              ),
              // Display translated 'All' button text
              Consumer<TranslationProvider>(
                builder: (context, provider, child) {
                  return Textt(
                    provider,
                    'allButton',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFFA36C88),
                    ),
                  );
                },
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          // Display icons for popular categories
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFFF8CDEC),
                child: Image.asset(
                  "Images/beatch.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFF9ED2F7),
                child: Image.asset(
                  "Images/camping.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFfcbb8ef),
                child: Image.asset(
                  "Images/car.png",
                  height: 60,
                ),
              ),
              CircleAvatar(
                radius: 40,
                backgroundColor: const Color(0xFFFacdcc),
                child: Image.asset(
                  "Images/food.png",
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 0, right: 15, left: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Consumer<TranslationProvider>(
                  builder: (context, provider, child) {
                    return Container(
                      margin: const EdgeInsets.only(
                          left: 20.0), // Add margin to all sides
                      child: Textt(
                        provider,
                        "p1",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFB07C97),
                        ),
                      ),
                    );
                  },
                ),
                Consumer<TranslationProvider>(
                  builder: (context, provider, child) {
                    return Container(
                      margin: const EdgeInsets.all(
                          8.0), // Add margin to all sides
                      child: Textt(
                        provider,
                        "p2",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFB07C97),
                        ),
                      ),
                    );
                  },
                ),
                Consumer<TranslationProvider>(
                  builder: (context, provider, child) {
                    return Container(
                      margin: const EdgeInsets.only(
                          top: 8.0, bottom: 8.0, right: 15), // Add margin to all sides
                      child: Textt(
                        provider,
                        "p3",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFB07C97),
                        ),
                      ),
                    );
                  },
                ),
                Consumer<TranslationProvider>(
                  builder: (context, provider, child) {
                    return Container(
                      margin: const EdgeInsets.all(
                          8.0), // Add margin to all sides
                      child: Textt(
                        provider,
                        "p4",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Color(0xFFB07C97),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
