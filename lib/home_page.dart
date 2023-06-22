import 'package:flutter/material.dart';
import 'package:onboarding/onboardlist.dart';

import 'home_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                  onPageChanged: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  itemCount: pages.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        Image.asset(
                          pages[index].image,
                          height: 200,
                        ),
                        Text(
                          pages[index].title,
                          style: const TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            pages[index].discription,
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.grey,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 120),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              3,
                              (index) => Container(
                                height: 10,
                                width: currentIndex == index ? 20 : 10,
                                margin: const EdgeInsets.only(right: 5),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.all(30),
                            child: SizedBox(
                              height: 60,
                              width: double.infinity,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                const HomeScreen()));
                                  },
                                  child: Text(
                                    currentIndex == pages.length - 1
                                        ? "Start"
                                        : "Next",
                                    style: const TextStyle(fontSize: 28),
                                  )),
                            )),
                      ],
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
