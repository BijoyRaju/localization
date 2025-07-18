import 'package:flutter_localization/flutter_localization.dart';

const List<MapLocale> LOCALES = [
  MapLocale("en", LocaleData.EN),
  MapLocale("ml", LocaleData.ML),
  MapLocale("hi", LocaleData.HI),
];

mixin LocaleData{
  static const String title = "title";
  static const String body = "body";

  static const Map<String,dynamic> EN = {
    title : "Login",
    body : "Welcome to the flutter application"
  };

  static const Map<String,dynamic>  ML = {
    title : "ലോഗിൻ",
    body : "ഫ്ലട്ടർ ആപ്ലിക്കേഷനിലേക്ക് സ്വാഗതം"
  };

  static const Map<String,dynamic>  HI = {
    title : "लॉग इन करें",
    body : "फ़्लटर एप्लिकेशन में आपका स्वागत है"
  };
}