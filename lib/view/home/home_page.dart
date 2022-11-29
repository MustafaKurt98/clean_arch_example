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
        return CustomScrollView(
          slivers: [
            const CupertinoSliverNavigationBar(
              leading: CircleAvatar(
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
              child: Column(
                children: [
                  Padding(
                    padding: CustomPaddings.onlyTop * 4,
                    child: CarouselSlider(
                      options: CarouselOptions(
                        aspectRatio: 0.8,
                        autoPlayInterval: const Duration(seconds: 3),
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      ),
                      items: model.carouselTrainingPhotos
                          .map((e) => Image.network(e))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
