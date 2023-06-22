class OnboardingList {
  String image;
  String title;
  String discription;

  OnboardingList({required this.image, required this.title, required this.discription});
}

List<OnboardingList> pages = [
  OnboardingList(
      title: "Welcome To Food App 🥰",
      image: "assets/welcomeimage.jpg",
      discription:
          "Mexican food is so loved because it is packed full of flavour, fresh ingredients and a fusion of its history. But if you’ve never tried cooking it at home, then it can be a little daunting."),
  OnboardingList(
      title: "Fast Delivery 🚀 ",
      image: "assets/fastdeliveryimage.jpg",
      discription:
          "Mexican food is so loved because it is packed full of flavour, fresh ingredients and a fusion of its history. But if you’ve never tried cooking it at home, then it can be a little daunting."),
  OnboardingList(
      title: "Cash Rewards 🏆",
      image: "assets/cashbackimage.jpg",
      discription:
          "Mexican food is so loved because it is packed full of flavour, fresh ingredients and a fusion of its history. But if you’ve never tried cooking it at home, then it can be a little daunting."),
];
