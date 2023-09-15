import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/src/provider/model/offer.dart';
import 'package:ecommerce/src/provider/model/order.dart';
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
  final String _orderCollection = "All_order";
  final String _offerCollection = "All_Offers";

  /// creaet collection
  createCollection() {
    collectionReference = firebaseFirestore.collection(_productCollection);
  }

  /// Get all product data and convert in model
  Future<List<Product>> getData() async {
    QuerySnapshot<Object?> snapshot = await collectionReference.get();
    return snapshot.docs.map((e) => Product.stream(e)).toList();
  }

  /// Add user details in firebase
  Future<void> addUser({
    required String userUid,
    required Users user,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .set(user.toJson());
  }

  /// Get user details in firebase
  Future<Users> getUser({
    required String userUid,
  }) async {
    DocumentSnapshot<Map<String, dynamic>> snapshot =
        await firebaseFirestore.collection(_userCollection).doc(userUid).get();
    Map<String, dynamic>? data = snapshot.data();
    return Users.fromJson(data!);
  }

  /// Update userdata
  Future<void> updateUser({
    required String userUid,
    required String filed,
    required dynamic value,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .update({filed: value});
  }

  /// Create wishlist on user account in firebase
  Future<List<Product>> getWishlist({required String userUid}) async {
    QuerySnapshot<Object?> snapshot = await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_whishlistCollection)
        .get();
    return snapshot.docs.map((e) => Product.stream(e)).toList();
  }

  /// Add product in wishlist
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

  /// Remove product in wishlist
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

  /// Create orderlist on user account in firebase
  Future<List<OrderProduct>> getOrderList({required String userUid}) async {
    QuerySnapshot<Object?> snapshot = await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_orderCollection)
        .get();
    return snapshot.docs.map((e) => OrderProduct.stream(e)).toList();
  }

  /// Add product in orderlist
  Future<void> addOrderProduct({
    required String userUid,
    required String orderId,
    required OrderProduct order,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_orderCollection)
        .doc(orderId)
        .set(order.toJson());
  }

  /// Remove product in orderlist
  Future<void> removeOrderProduct({
    required String userUid,
    required String orderId,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_orderCollection)
        .doc(orderId)
        .delete();
  }

  /// Update quantitu
  Future<void> update({
    required String userUid,
    required String orderId,
    required String filed,
    required dynamic value,
  }) async {
    await firebaseFirestore
        .collection(_userCollection)
        .doc(userUid)
        .collection(_orderCollection)
        .doc(orderId)
        .update({filed: value});
  }

  /// Add offer in firebase
  Future<void> addOffer({
    required Offers offers,
 
  }) async {
    await firebaseFirestore.collection(_offerCollection).doc(offers.id).set(offers.toJson());
  }

  /// Get offerList in firebase
  Future<List<Offers>> getOfferList() async {
    QuerySnapshot<Object?> snapshot =
        await firebaseFirestore.collection(_offerCollection).get();
    return snapshot.docs.map((e) => Offers.stream(e)).toList();
  }

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
