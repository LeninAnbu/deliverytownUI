
class languageModel{
  String? language;
  String? sublanguage;
  String? languagecode;
  languageModel({
    required this.language,
    required this.languagecode,
    required this.sublanguage

  });


}
List<languageModel> get LanguageModel=>[
  languageModel(
    language: "தமிழ்", 
    languagecode: "ta", 
    sublanguage: "Tamil"
    ),
  languageModel(
    language: "English", 
    languagecode: "en", 
    sublanguage: "English"
    ),
    
    languageModel(
    language: "हिंदी", 
    languagecode: "hi", 
    sublanguage: "Hindi"
    ),
    
    languageModel(
    language: "ಕನ್ನಡ", 
    languagecode: "kn", 
    sublanguage: "Kannada"
    ),
    languageModel(
    language: "മലയാളം", 
    languagecode: "ml", 
    sublanguage: "Malayalam"
    ),
    languageModel(
    language: "తెలుగు", 
    languagecode: "te", 
    sublanguage: "Telugu"
    ),
    languageModel(
    language: "日本語", 
    languagecode: "ja", 
    sublanguage: "Japanese"
    ),
    languageModel(
    language: "ગુજરાતી", 
    languagecode: "gu", 
    sublanguage: "Gujarati"
    ),
    languageModel(
    language: "मराठी", 
    languagecode: "mr", 
    sublanguage: "Marathi"
    ),

];