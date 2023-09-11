import 'package:ecommerce/src/constant/colors.dart';
import 'package:ecommerce/src/constant/global.dart';
import 'package:ecommerce/src/constant/strings.dart';
import 'package:ecommerce/src/constant/widget/text.dart';
import 'package:ecommerce/src/provider/bloc/get_product/favourite/favourite_bloc.dart';
import 'package:ecommerce/src/utils/extension/navigator.dart';
import 'package:ecommerce/src/utils/media_query.dart';
import 'package:ecommerce/src/views/catelog/delete_dialog.dart';
import 'package:ecommerce/src/views/catelog/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstColor.white,
      appBar: AppBar(
        backgroundColor: ConstColor.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: ConstColor.black,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: ConstColor.white,
              ),
            ),
          ),
        ),
        title: FxText(
          color: ConstColor.black,
          size: 22,
          fontWeight: FontWeight.w600,
          text: ConstString.myFavourites,
        ),
        centerTitle: true,
      ),
      body: BlocBuilder<FavouriteBloc, FavouriteState>(
        builder: (context, state) => state.when(
          initial: () => const SizedBox.shrink(),
          loding: () => Center(
            child: CircularProgressIndicator.adaptive(
              backgroundColor: ConstColor.black,
            ),
          ),
          success: (data) => ListView.builder(
            shrinkWrap: true,
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            itemCount: data.length,
            itemBuilder: (context, index) => Dismissible(
              key: Key(index.toString()),
              direction: DismissDirection.endToStart,
              background: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: ConstColor.black,
                    borderRadius: BorderRadius.circular(10)),
                alignment: Alignment.centerRight,
                child: const Icon(Icons.delete, color: Colors.white),
              ),
              confirmDismiss: (direction) => showDialog(
                context: context,
                builder: (context) => const DeletePermissionDialog(),
              ).then(
                (confirmed) async {
                  if (confirmed == true) {
                    BlocProvider.of<FavouriteBloc>(context).add(
                      FavouriteEvent.remove(
                        productDocId: data[index].id,
                      ),
                    );
                    BlocProvider.of<FavouriteBloc>(context).add(
                      const FavouriteEvent.refresh(),
                    );
                    Global.addWishlist();
                  }
                  return null;
                },
              ),
              child: Card(
                color: ConstColor.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                elevation: 2,
                child: ListTile(
                  onTap: () {
                    context.push(DetailsPage(
                      product: data[index],
                    ));
                  },
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  visualDensity:
                      const VisualDensity(horizontal: 0, vertical: 3),
                  contentPadding: EdgeInsets.zero,
                  leading: Container(
                    color: ConstColor.disable,
                    width: width(context: context) * 0.2,
                    height: height(context: context),
                  ),
                  title: FxText(
                    text: data[index].name,
                    color: ConstColor.black,
                    size: 14,
                    fontWeight: FontWeight.w500,
                  ),
                  subtitle: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FxText(
                        textOverflow: TextOverflow.ellipsis,
                        text: data[index].subtitle,
                        color: ConstColor.grey,
                        size: 12,
                        fontWeight: FontWeight.w400,
                      ),
                      FxText(
                        textOverflow: TextOverflow.ellipsis,
                        text: "\$ ${data[index].price}",
                        color: ConstColor.black,
                        size: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          error: (massage) => Center(
            child: Image.asset(
              Global.noFavoritesData,
            ),
          ),
        ),
      ),
    );
  }
}
