import 'package:bookly_app/Features/home/presentation/maneger/Newset_Books_cubit/newset_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custem_book_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      child: BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (context, state) {
          return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4),
                  child: CustemBookImage(
                    imageUrl: '',
                  ),
                );
              });
        },
      ),
    );
  }
}
