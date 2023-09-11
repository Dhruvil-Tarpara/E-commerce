import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/src/provider/model/product.dart';
import 'package:ecommerce/src/provider/model/user.dart';

class FirebaseCloudHelper {
  FirebaseCloudHelper._();
  static final FirebaseCloudHelper firebaseCloudHelper =
      FirebaseCloudHelper._();
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  late CollectionReference collectionReference;
  final String _productCollection = "All_Product";
  final String _userCollection = "All_Users";
  final String _whishlistCollection = "whishlist_product";
  //final String _offerCollection = "All_Offers";

  /// creaet collection
  createCollection() {
    collectionReference = firebaseFirestore.collection(_productCollection);
  }

  /// Get all product data and convert in model
  Future<List<Product>> getData() async {
    QuerySnapshot<Object?> snapshot = await collectionReference.get();
    return snapshot.docs.map((e) => Product.stream(e)).toList();
  }

  Future<void> addUser({
    required String userUid,
    required Users user,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .set(user.toJson());
  }

  Future<List<Product>> getWishlist({required String userUid}) async {
    QuerySnapshot<Object?> snapshot = await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_whishlistCollection)
        .get();
    return snapshot.docs.map((e) => Product.stream(e)).toList();
  }

  Future<void> addWishlist({
    required String userUid,
    required String productId,
    required Product product,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_whishlistCollection)
        .doc(productId)
        .set(product.toJson());
  }

  Future<void> removeWishlist({
    required String userUid,
    required String productDocId,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_whishlistCollection)
        .doc(productDocId)
        .delete();
  }

  // /// Get one movie and convert in model
  // Future getMovie({required String docId}) async {
  //   DocumentSnapshot<Object?> snapshot =
  //       await collectionReference.doc(docId).get();
  //   return Movie.fromFirestore(snapshot);
  // }

  /// Insert data in firebase firestor using model

  // void addProductsToFirestore(List<Product> products) async {
  //   final CollectionReference productsCollection =
  //       FirebaseFirestore.instance.collection('products');

  //   for (final product in products) {
  //     await productsCollection.add(product.toJson());
  //   }
  // }

  Future<void> insertData({required Product product}) async {
    await collectionReference.add(product.toJson());
  }

  // /// Update data using model
  // Future<void> upDateData({required String docId, required Movie data}) async {
  //   await collectionReference.doc(docId).update(data.toJson());
  // }

  // /// Delete data
  // Future<void> deleteData({required String doc}) async {
  //   await collectionReference.doc(doc).delete();
  // }

  /// Upload movie image and create folder using userId
  // Future<String?> uplodeImage({required String key, required File file}) async {
  //   try {
  //     await firebaseStorage.ref("${Global.users.id}/$key").putFile(file);
  //     final url =
  //         await firebaseStorage.ref("${Global.users.id}/$key").getDownloadURL();
  //     return url;
  //   } on FirebaseException catch (_) {
  //     return null;
  //   }
  // }

  // /// Delete image in folder
  // Future<bool> deleteImage({required String key}) async {
  //   try {
  //     await firebaseStorage.ref("${Global.users.id}/$key").delete();
  //     return true;
  //   } on FirebaseException catch (_) {
  //     return false;
  //   }
  // }
}
