
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';
import 'book_rating.dart';
import 'books_action.dart';
import 'custem_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * .3,
          ),
          child: const CustemBookImage(),
        ),
        const SizedBox(
          height: 30,
        ),
        const Text(
          'The Jungle Book',
          style: Styles.textStyle30,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: .7,
          child: Text('Rudyard Kipling',
              style: Styles.textStyle18.copyWith(fontStyle: FontStyle.italic)),
        ),
        const SizedBox(
          height: 18,
        ),
        const BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(
            vertical: 37,
            horizontal: 38,
          ),
          child: BooksAction(),
        ),
      ],
    );
  }
}
