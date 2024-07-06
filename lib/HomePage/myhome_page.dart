import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/LanguageDialog/language_selection_dialog.dart';
import 'package:travelappui/Model/model.dart';
import 'package:travelappui/Model/provider_model.dart';
import 'package:travelappui/widgets/NatureSlider.dart';
import 'package:travelappui/widgets/discover_selection.dart';
import 'package:travelappui/widgets/popular_category.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Helper function to display translated text using the provider
Widget Textt(TranslationProvider provider, String key, {TextStyle? style}) {
  return Text(provider.translatedTexts[key] ?? '', style: style);
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Stack(
              children: [
                // Background container
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                ),
                // Gradient background
                Container(
                  height: MediaQuery.of(context).size.height / 1.4,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFFFFBFB),
                        Color(0XFFF3ECEE),
                      ],
                    ),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
                  ),
                  child: Stack(
                    children: [
                      // Top content area
                      Container(
                        height: 261,
                        width: double.infinity,
                        child: SafeArea(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Top bar with language button and search icon
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      // Language selection button
                                      Consumer<TranslationProvider>(
                                        builder: (context, provider, child) {
                                          return Row(
                                            children: [
                                              IconButton(
                                                onPressed: () => showLanguageSelectionSheet(context, provider),
                                                icon: const Icon(Icons.language, size: 30),
                                              ),
                                              // Loading indicator for translation
                                              if (provider.isLoading)
                                                const SizedBox(
                                                  width: 24,
                                                  height: 24,
                                                  child: CircularProgressIndicator(
                                                    strokeWidth: 2.0,
                                                  ),
                                                ),
                                            ],
                                          );
                                        },
                                      ),
                                      Image.asset("Images/search.png", height: 30),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 40),
                                // Translated title text
                                Consumer<TranslationProvider>(
                                  builder: (context, provider, child) {
                                    return Textt(
                                      provider,
                                      "titles",
                                      style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                                    );
                                  },
                                ),
                                const SizedBox(height: 15),
                                // Nature selection widget
                                Consumer<TranslationProvider>(
                                  builder: (context, provider, child) {
                                    return natureSelection(provider);
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      // Cards for displaying locations
                      Card(context),
                    ],
                  ),
                ),
              ],
            ),
            // Bottom gradient background
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0XFFF3ECEE),
                      Color(0xFFFFFBFB),
                    ],
                  ),
                ),
              ),
            ),
            // Bottom container with popular categories
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height / 3.49,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(70)),
                ),
                child: const PopularCategories(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Function to create the card widget for displaying location items
  Positioned Card(BuildContext context) {
    return Positioned(
      top: 245,
      child: SizedBox(
        height: 400,
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: locationItems.length,
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            LocationDetail location = locationItems[index];
            return GestureDetector(
              onTap: () {
                // Navigation to more detail page (currently commented out)
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => MoreDetail(location: location),
                //   ),
                // );
              },
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 30),
                    child: Hero(
                      tag: location.image,
                      child: Stack(
                        children: [
                          // Location image with rounded corners
                          Container(
                            height: 390,
                            width: 260,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                image: AssetImage(location.image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Gradient overlay at the bottom
                          Positioned.fill(
                            bottom: 0,
                            child: Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.transparent,
                                    Colors.black,
                                  ],
                                ),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(30),
                                  bottomRight: Radius.circular(30),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Widget for best nature slider
                  bestNatureSlider(location),
                  // Bookmark icon
                  Positioned(
                    top: 40,
                    left: 230,
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: const Icon(
                        Icons.bookmark,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
