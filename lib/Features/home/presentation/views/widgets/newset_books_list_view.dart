import 'package:bookly_app/Features/home/presentation/maneger/Newset_Books_cubit/newset_books_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/widgets/custom_ loading_indicator.dart';
import '../../../../../core/widgets/custom_error_widget.dart';
import 'book_list_view_item.dart';

class NewsetBooksListView extends StatelessWidget {
  const NewsetBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
      builder: (context, state) {
        if (state is NewsetBooksSuccess) {
          return ListView.builder(
              itemCount: state.books.length,
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(
                    bookMode: state.books[index],
                  ),
                );
              });
        } else if (state is NewsetBooksFailure) {
          return CustomErrorWidget(
            errMessage: state.errMessage,
          );
        } else {
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}
