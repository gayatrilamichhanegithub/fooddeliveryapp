class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description: 'pick your food from our menu\n   more than 35 times',
      image: "images/screen1.png",
      title: 'Select from Our\n    Best Menu'),
  UnboardingContent(
      description:
          'you can pay cash on delivery and\n Card payment is available',
      image: "images/screen2.png",
      title: 'Easy and Online Payment'),
  UnboardingContent(
      description: 'Deliver your food at your\n        Doorstep',
      image: "images/screen3.png",
      title: 'Quick Delivery at\n  Your Doorstep')
];
