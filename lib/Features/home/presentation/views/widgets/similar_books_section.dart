
import 'package:bookly_app/Features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Text(
            'You can also like',
            style: Styles.textStyle14,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: SimilarBooksListView(),
        ),
      ],
    );
  }
}
