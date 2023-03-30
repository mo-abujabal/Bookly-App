import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustemBookImage extends StatelessWidget {
  const CustemBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.4 / 4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(AssetsData.itemImage),
            )),
      ),
    );
  }
}
