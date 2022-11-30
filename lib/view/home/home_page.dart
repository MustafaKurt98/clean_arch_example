import 'package:carousel_slider/carousel_slider.dart';
import 'package:clean_arch_example/constants.dart';
import 'package:clean_arch_example/model/app_state_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(
      builder: (context, model, child) {
        return const CustomScrollView(
          slivers: [
            CupertinoSliverNavigationBar(
              leading: CircleAvatar(
                maxRadius: 15,
                backgroundColor: TabBarColors.inActiveColor,
                child: Text(
                  "MK",
                  style: CustomTextStyles.tertiaryTextStyle,
                ),
              ),
              largeTitle: Text(
                'Ana Sayfa',
              ),
            ),
            SliverFillRemaining(
              child: SliverCarousel(),
            ),
          ],
        );
      },
    );
  }
}

class SliverCarousel extends StatelessWidget {
  const SliverCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AppStateModel>(builder: (context, model, child) {
      return Column(
        children: [
          Padding(
            padding: CustomPaddings.onlyTopBottom2,
            child: CarouselSlider(
              options: CarouselOptions(
                aspectRatio: 0.9,
                autoPlayInterval: const Duration(seconds: 3),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                onPageChanged: (index, reason) => model.changeIndicator(index),
              ),
              items: model.carouselTrainingPhotos
                  .map((e) => Image.network(
                        e,
                        fit: BoxFit.cover,
                      ))
                  .toList(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: model.carouselTrainingPhotos.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => model.controller.animateToPage(entry.key),
                child: Container(
                  width: 12,
                  height: 8,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: TabBarColors.primaryColor
                          .withOpacity(model.current == entry.key ? 1 : 0.3)),
                ),
              );
            }).toList(),
          ),
        ],
      );
    });
  }
}
