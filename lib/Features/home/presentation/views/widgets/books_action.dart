import 'package:flutter/material.dart';
import '../../../../../core/utils/styles.dart';
import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            style: Styles.textStyle20.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w900,
            ),
            backgroundColor: Colors.white,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(
                12,
              ),
              bottomLeft: Radius.circular(
                12,
              ),
            ),
            title: '19.99€',
          ),
        ),
        Expanded(
          child: CustomButton(
            style: Styles.textStyle18.copyWith(color: Colors.white),
            backgroundColor: const Color(0xffEF8262),
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(
                12,
              ),
              bottomRight: Radius.circular(
                12,
              ),
            ),
            title: 'Free preview',
          ),
        ),
      ],
    );
  }
}
