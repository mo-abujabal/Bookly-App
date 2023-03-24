import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24, top: 8, bottom: 20),
        child: Row(
          children: [
            Image.asset(
              AssetsData.logo,
              height: 24,
            ),
            const Spacer(),
            GestureDetector(
              onTap: () {},
              child: Image.asset(AssetsData.search),
            ),
          ],
        ),
      ),
    );
  }
}
