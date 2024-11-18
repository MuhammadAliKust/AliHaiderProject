import 'package:ali_haider_project/models/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageViewDemo extends StatelessWidget {
  PageViewDemo({super.key});

  List<OnBoardingModel> onBoardingList = [
    OnBoardingModel(image: 'assets/images/1.png', title: 'First Title'),
    OnBoardingModel(image: 'assets/images/1.png', title: 'Second Title'),
    OnBoardingModel(image: 'assets/images/1.png', title: 'Third Title'),
  ];

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Page View Demo"),
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                itemCount: onBoardingList.length,
                itemBuilder: (context, i) {
                  return Container(
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Image.asset(onBoardingList[i].image.toString()),
                        Text(
                          onBoardingList[i].title.toString(),
                          style: TextStyle(fontSize: 30),
                        )
                      ],
                    ),
                  );
                }),
          ),
          SmoothPageIndicator(
              controller: controller, // PageController
              count: onBoardingList.length,
              effect: ExpandingDotsEffect(), // your preferred effect
              onDotClicked: (index) {}),
          SizedBox(height: 200,)
        ],
      ),
    );
  }
}
