import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import 'best_seller_list_view.dart';
import 'book_list_view_item.dart';
import 'custom_app_bar.dart';
import 'custem_book_item.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            CustomAppBar(),
            FeaturedBooksListView(),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              child: Text(
                'Best Seller',
                style: Styles.textStyle18,
              ),
            ),
          ],
        ),
      ),
      const SliverFillRemaining(
        child: BestSellerListView(),
      )
    ]);
  }
}
