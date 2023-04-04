import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/assets.dart';

class CustomSearchTextFeild extends StatelessWidget {
  const CustomSearchTextFeild({super.key});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        hintText: 'Search',
        suffixIcon: Opacity(
          opacity: .5,
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(AssetsData.search),
          ),
        ),
      ),
    );
  }
}
