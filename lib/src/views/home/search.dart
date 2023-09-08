import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get/bloc/product_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          close(context, null);
          context.read<ProductBloc>().add(const ProductEvent.newArrivals());
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
        close(context, null);
        context.read<ProductBloc>().add(const ProductEvent.newArrivals());
      },
      icon: Icon(
        Icons.arrow_back_rounded,
        color: ConstColor.black,
      ),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    
    (context).read<ProductBloc>().add(ProductEvent.search(query));
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
              title: Text(data[index].name),
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
