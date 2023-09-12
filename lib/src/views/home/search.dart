import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/new_arrivals/arrivals_bloc.dart';
import 'package:ecommerce/src/provider/bloc/get_product/product/product_bloc.dart';
import 'package:ecommerce/src/utils/extension/capitalize.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/views/catelog/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          (context).read<ArrivalsBloc>().add(const ArrivalsEvent.refresh());
          close(context, null);
        },
        icon: Icon(
          Icons.close,
          color: ConstColor.black,
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        (context).read<ArrivalsBloc>().add(const ArrivalsEvent.refresh());
        close(context, null);
      },
      icon: Icon(
        Icons.arrow_back_rounded,
        color: ConstColor.black,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    (context).read<ArrivalsBloc>().add(ArrivalsEvent.search(query));
    return BlocBuilder<ProductBloc, ProductState>(
      builder: (context, state) => state.when(
        initial: () => const Center(
          child: SizedBox.shrink(),
        ),
        loding: () => const CircularProgressIndicator.adaptive(),
        success: (data) => Center(
          child: ListView.separated(
            separatorBuilder: (context, index) => const Divider(),
            itemCount: data.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                context.push(DetailsPage(product: data[index]));
              },
              title: FxText(
                text: data[index].name.toLowerCase().capitalize(),
                color: ConstColor.black,
                size: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        error: (data) => Center(
          child: FxText(text: data),
        ),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const SizedBox.shrink();
  }
}
