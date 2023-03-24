import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    Key? key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  }) : super(key: key);
  final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          color: Color.fromARGB(255, 250, 227, 14),
          size: 14,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            '4.8',
            style: Styles.textStyle16.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const Opacity(
          opacity: .5,
          child: Text(
            '(2390)',
            style: Styles.textStyle14,
          ),
        )
      ],
    );
  }
}
