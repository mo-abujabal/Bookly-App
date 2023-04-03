import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/widgets/custom_button.dart';
import 'book_details_section.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custom_book_details_app_bar.dart';
import 'custem_book_item.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: const [
              CustomBookDetailsAppBar(),
              BookDetailsSection(),
              Expanded(child: SizedBox()),
              SimilarBooksSection(),
            ],
          ),
        ),
      ],
    );
  }
}


