import 'package:cloud_firestore/cloud_firestore.dart';

import '../models/product.dart';

class ProductService {
  ProductService(this.db);
  final FirebaseFirestore db;

  CollectionReference<Map<String, dynamic>> get productCollection =>
      db.collection('products');

  Future<List<Product>> getProducts() async {
    final snapshot = await productCollection.get();
    return snapshot.docs.map((doc) {
      final data = doc.data();
      return Product.fromJson(data);
    }).toList();
  }

  Future<Product> getProduct(String id) async {
    final doc = await productCollection.doc(id).get();
    return Product.fromJson(doc.data() ?? {});
  }
}
