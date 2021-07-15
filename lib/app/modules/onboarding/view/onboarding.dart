import 'package:flutter/material.dart';
import 'package:flutter_blueprint/app/data/model/onboarding_model.dart';
import 'package:flutter_blueprint/app/modules/onboarding/controller/onboarding_controller.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnBoardingController>(
      builder: (controller) => Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller.pageController,
                itemCount: contents.length,
                onPageChanged: (int index) {
                  controller.setCurrentIndex(index);
                },
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(40),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Image(
                          image: AssetImage("assets/images/petzu 1.png"),
                        ),
                        SizedBox(height: 25),
                        Image(
                          image: AssetImage(
                            contents[i].image,
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          width: 200,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  contents[i].disc1,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                                Text(
                                  contents[i].disc2,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    height: 1.4,
                                    fontSize: 16,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  contents.length,
                      (index) => buildDot(index, controller.currentIndex),
                ),
              ),
            ),
            Container(
              height: 50,
              margin: EdgeInsets.all(50),
              width: double.infinity,
              child: ElevatedButton(
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 18),
                ),
                onPressed: () {
                  controller.pageController.nextPage(
                    duration: Duration(milliseconds: 200),
                    curve: Curves.bounceIn,
                  );
                },
                style: ElevatedButton.styleFrom(
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container buildDot(int index, int currentIndex) {
    return Container(
      height: 7,
      width: currentIndex == index ? 30 : 18,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: currentIndex == index
            ? Theme.of(Get.context).primaryColor
            : Theme.of(Get.context).primaryColor.withOpacity(0.3),
      ),
    );
  }
}
