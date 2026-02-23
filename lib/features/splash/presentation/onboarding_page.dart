import 'package:flutter/material.dart';

import '../../../core/routes/app_routes.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController controller = PageController();

  int currentIndex = 0;

  final List<Map<String, dynamic>> data = [
    {
      "icon": Icons.shopping_bag_outlined,
      "color": Color(0xFF3B82F6),
      "title": "Browse Products",
      "subtitle":
          "Discover thousands of products from top brands at amazing prices",
      "button": "Next",
    },

    {
      "icon": Icons.local_shipping_outlined,
      "color": Color(0xFF22C55E),
      "title": "Fast Delivery",
      "subtitle":
          "Get your orders delivered quickly and safely to your doorstep",
      "button": "Next",
    },

    {
      "icon": Icons.credit_card_outlined,
      "color": Color(0xFFA855F7),
      "title": "Secure Payment",
      "subtitle": "Shop with confidence using our secure payment methods",
      "button": "Get Started",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,

      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: controller,

                itemCount: data.length,

                onPageChanged: (index) {
                  setState(() {
                    currentIndex = index;
                  });
                },

                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Container(
                        height: 140,

                        width: 140,

                        decoration: BoxDecoration(
                          color: data[index]["color"],

                          shape: BoxShape.circle,
                        ),

                        child: Icon(
                          data[index]["icon"],

                          size: 60,

                          color: Colors.white,
                        ),
                      ),

                      const SizedBox(height: 40),

                      Text(
                        data[index]["title"],

                        style: const TextStyle(
                          fontSize: 28,

                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 16),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 32),

                        child: Text(
                          data[index]["subtitle"],

                          textAlign: TextAlign.center,

                          style: TextStyle(
                            fontSize: 16,

                            color: Colors.grey.shade600,
                          ),
                        ),
                      ),

                      const SizedBox(height: 30),

                      buildIndicator(),
                    ],
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(24),

              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,

                    height: 55,

                    child: ElevatedButton(
                      onPressed: () {
                        if (currentIndex == data.length - 1) {
                          Navigator.pushReplacementNamed(
                            context,
                            AppRoutes.signIn,
                          );
                        } else {
                          controller.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease,
                          );
                        }
                      },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5B6EF5),

                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),

                      child: Text(
                        data[currentIndex]["button"],

                        style: const TextStyle(fontSize: 18),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  const Text(
                    "Skip",

                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: List.generate(data.length, (index) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 4),

          height: 8,

          width: currentIndex == index ? 24 : 8,

          decoration: BoxDecoration(
            color: currentIndex == index
                ? const Color(0xFF5B6EF5)
                : Colors.grey.shade300,

            borderRadius: BorderRadius.circular(10),
          ),
        );
      }),
    );
  }
}
