class IntroModel {
  final String title;
  final String description;
  final String imageUrl;
  final int rating;
  final String viewNumber;

  IntroModel(this.title, this.description, this.imageUrl, this.rating,
      this.viewNumber);
}

// Generate a list of IntroModel
List<IntroModel> introList = [
  IntroModel(
      "Flutter",
      "Flutter is Google’s mobile UI framework for building high quality, beautiful, and fast apps on Android, iOS, Linux, macOS, Windows, and the web.",
      "assets/images/one.jpg",
      5,
      "1.2k"),
  IntroModel(
      "Dart",
      "Dart is a programming language that combines the best aspects of C++ with the simplicity of Java.",
      "assets/images/two.jpg",
      4,
      "1.5k"),
  IntroModel(
      "Android",
      "Android is Google’s mobile operating system, used for programming or developing digital devices (Smartphones, Tablets, etc.).",
      "assets/images/three.jpg",
      3,
      "1.5k"),
  IntroModel(
      "iOS",
      "iOS is Apple’s mobile operating system, used for developing Apple devices (iPhone, iPad, Apple TV, Apple Watch, etc.).",
      "assets/images/four.jpg",
      1,
      "1.5k"),
];
