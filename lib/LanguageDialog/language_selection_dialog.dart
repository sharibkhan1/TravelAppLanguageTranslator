import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:travelappui/Model/provider_model.dart';

void showLanguageSelectionSheet(BuildContext context, TranslationProvider provider) {
  // Display a bottom sheet to select language
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        height: 200,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 231, 178, 200),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Title: Select Language
            const Text('Select Language', style: TextStyle(fontSize: 18)),
            const SizedBox(height: 20),
            Consumer<TranslationProvider>(
              builder: (context, value, child) {
                return Consumer<TranslationProvider>(
                  builder: (context, provider, child) {
                    return DropdownButton<String>(
                      elevation: 5,
                      dropdownColor: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      value: provider.selectedLanguageCode,
                      // When language is changed, translate texts and close the bottom sheet
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          provider.translateTexts(newValue);
                          Navigator.pop(context); // Close the bottom sheet
                        }
                      },
                      // Map language options to dropdown items
                      items: value.languages.map<DropdownMenuItem<String>>(
                            (Map<String, String> lang) {
                          return DropdownMenuItem<String>(
                            value: lang['code'],
                            child: Text(lang['name']!),
                          );
                        },
                      ).toList(),
                    );
                  },
                );
              },
            ),
          ],
        ),
      );
    },
  );
}
