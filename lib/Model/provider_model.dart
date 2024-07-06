import 'package:flutter/material.dart';
import 'package:translator/translator.dart';

class TranslationProvider extends ChangeNotifier {
  final translator = GoogleTranslator();

  // Original texts in English
  Map<String, String> originalTexts = {
    't1': 'Best nature',
    't2': 'Most viewed',
    't3': 'Recommend',
    't4': 'Newly discover',
    't5': 'Peace',
    'popularCategory': 'Popular',
    'allButton': 'see ',
    'p1': 'beach',
    'p2': 'camping',
    'p3': 'car',
    'p4': 'food',
    'titles': 'Discover',
  };

  // Translated texts
  Map<String, String> translatedTexts = {};

  // Selected language code
  String selectedLanguageCode = 'en';

  //loading for language change
  bool isLoading = false;

  final List<Map<String, String>> languages = [
    {'code': 'en', 'name': 'English'},
    {'code': 'hi', 'name': 'Hindi'},
    {'code': 'bn', 'name': 'Bengali'},
    {'code': 'te', 'name': 'Telugu'},
    {'code': 'mr', 'name': 'Marathi'},
    {'code': 'ta', 'name': 'Tamil'},
    {'code': 'ur', 'name': 'Urdu'},
    {'code': 'gu', 'name': 'Gujarati'},
    {'code': 'kn', 'name': 'Kannada'},
    {'code': 'ml', 'name': 'Malayalam'},
    {'code': 'or', 'name': 'Odia'},
    {'code': 'pa', 'name': 'Punjabi'},
    {'code': 'as', 'name': 'Assamese'},
    {'code': 'bh', 'name': 'Bihari'},
    {'code': 'si', 'name': 'Sinhala'},
    {'code': 'sll', 'name': 'Select Language'},
  ];

  TranslationProvider() {
    // Initialize translated texts with original texts
    translatedTexts = Map.from(originalTexts);
  }

  // Function to translate texts to the target language
  void translateTexts(String targetLanguage) async {
    selectedLanguageCode = targetLanguage;

    // Notify listeners that language are updating
    isLoading = true;
    notifyListeners();

    for (var key in originalTexts.keys) {
      final translation = await translator.translate(originalTexts[key]!, to: targetLanguage);
      translatedTexts[key] = translation.text;
    }

    isLoading = false;
    notifyListeners();// Notify listeners that translations are updated
  }
}
