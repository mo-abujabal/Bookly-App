
import 'package:flutter/cupertino.dart';

import '../../../../../core/utils/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 50),
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
    );
  }
}
