import 'package:bookly_app/Features/home/presentation/views/widgets/custem_book_item.dart';
import 'package:bookly_app/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';
import '../../../data/models/book_model/book_model.dart';
import 'book_rating.dart';
import 'home_view_body.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookMode});
  final BookModel bookMode;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          height: 130,
          child: Row(
            children: [
              CustemBookImage(
                  imageUrl: bookMode.volumeInfo.imageLinks.smallThumbnail),
              const SizedBox(
                width: 30,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 12, bottom: 6),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * .6,
                        child: Text(
                          bookMode.volumeInfo.title!,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Styles.textStyle20,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 1),
                      child: Text(
                        bookMode.volumeInfo.authors![0],
                        style: Styles.textStyle16,
                      ),
                    ),
                    Row(
                      children: const [
                        Text(
                          'Free',
                          style: Styles.textStyle20,
                        ),
                        Spacer(),
                        BookRating(),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
