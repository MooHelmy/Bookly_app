import 'package:bookly_app/features/search/presentaion/views/search_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/utils/Style.dart';
import '../../../../../core/widgets/CustomAppbar.dart';
import 'Best_saller_listview.dart';
import 'Feature_Book_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppbar(onPressed: () {
                Get.to(() => const Searchview(),
                    transition: Transition.leftToRight);
              }),
              const FeatureBooklistview(), //first listView
              const SizedBox(
                height: 50,
              ),
              const Text(
                'Newste Books ',
                style: Style.textstyle18,
              ),
              const SizedBox(
                height: 10,
              ),

              //S listView
            ],
          ),
        ),
      ),
      const SliverToBoxAdapter(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: BestsallListview(),
        ),
      ),
    ]);
  }
}
