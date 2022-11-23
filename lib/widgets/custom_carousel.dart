import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({
    super.key,
  });

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  final _pageController = PageController();
  int _selectedIndicator = 0;

  final List<Widget> imagesBanner = [
    Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            'https://images.unsplash.com/photo-1513542789411-b6a5d4f31634?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1074&q=80',
          ),
        ),
      ),
    ),
  ];

  List<Widget> get rowIndicator => imagesBanner.asMap().entries.map((entry) {
        int index = entry.key;
        return InkWell(
          onTap: () {
            _pageController.animateToPage(
              index,
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeIn,
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(2),
            child: Container(
              height: 20,
              width: 20,
              decoration: BoxDecoration(
                color: _selectedIndicator == index ? Colors.amber : Colors.grey,
                shape: BoxShape.circle,
              ),
            ),
          ),
        );
      }).toList();

  @override
  void initState() {
    _pageController.addListener(() {
      final int next = _pageController.page!.round();
      if (_selectedIndicator != next) {
        setState(() {
          _selectedIndicator = next;
        });
      }
    });

    Timer.periodic(const Duration(seconds: 3), (timer) {
      final page = Random().nextInt(imagesBanner.length);

      setState(() {
        _pageController.animateToPage(page,
            duration: const Duration(milliseconds: 400), curve: Curves.easeIn);
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    return SizedBox(
      height: 200,
      width: mediaQueryData.size.width,
      child: Stack(
        children: [
          SizedBox(
            height: 200,
            child: PageView(
              controller: _pageController,
              children: imagesBanner,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: rowIndicator,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
