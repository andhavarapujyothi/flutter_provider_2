import 'package:flutter/material.dart';
import 'package:flutter_provider_2/item_model.dart';

class CartProvider extends ChangeNotifier {
  var mycartitemslist = [];
  double cartvalue = 0;

  addtocart(ItemModel itemModel) {
    mycartitemslist.add(itemModel);
    cartvalue += itemModel.price!;

    notifyListeners();
    // ignore: avoid_print
    print('Added to cart');
  }
}
