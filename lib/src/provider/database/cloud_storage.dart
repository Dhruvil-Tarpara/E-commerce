import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:ecommerce/src/provider/model/product.dart';

class FirebaseCloudHelper {
  FirebaseCloudHelper._();
  static final FirebaseCloudHelper firebaseCloudHelper =
      FirebaseCloudHelper._();
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;
  // final FirebaseStorage firebaseStorage = FirebaseStorage.instance;
  late CollectionReference collectionReference;
  final String _collectionName = "All_Product";

  /// creaet collection
  createCollection() {
    collectionReference = firebaseFirestore.collection(_collectionName);
  }

  /// Get all movies data and convert in model
  Future<List<Product>> getData() async {
    QuerySnapshot<Object?> snapshot = await collectionReference.get();
    return snapshot.docs.map((e) => Product.stream(e)).toList();
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
