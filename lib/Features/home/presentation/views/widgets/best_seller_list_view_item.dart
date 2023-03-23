
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';
import '../../../../../core/utils/styles.dart';

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.3 / 4,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image:  const DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(AssetsData.itemImage),
                  )),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 6),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * .6,
                  child: const Text(
                    'Harry Potter and the Goblet of Fire',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.textStyle20,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 1),
                child: Text(
                  'J.K. Rowling',
                  style: Styles.textStyle16,
                ),
              ),
              const Text(
                '19.99 €',
                style: Styles.textStyle20,
              )
            ],
          )
        ],
      ),
    );
  }
}
