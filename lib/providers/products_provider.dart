import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:workshop_22032023/service/product_service.dart';

final productsServiceProvider = Provider(
  (ref) => ProductService(
    FirebaseFirestore.instance,
  ),
);

final productsProvider = FutureProvider(
  (ref) {
    return ref.watch(productsServiceProvider).getProducts();
  },
);
