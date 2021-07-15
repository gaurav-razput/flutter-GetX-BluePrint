class OnBoardingContent {
  String image;
  String disc1;
  String disc2;

  OnBoardingContent({this.image, this.disc1, this.disc2});
}

List<OnBoardingContent> contents = [
  OnBoardingContent(
      image: 'assets/images/obs1.png',
      disc1: "At Petzu you can",
      disc2: "buy and sell pets"),
  OnBoardingContent(
      image: 'assets/images/obs2.png',
      disc1: "At Petzu you can",
      disc2: "find the best Vetinarys"),
  OnBoardingContent(
      image: 'assets/images/obs3.png',
      disc1: "At Petzu we provide",
      disc2: " trainners for your pets"),
];