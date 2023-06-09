import 'package:flutter/material.dart';
import 'package:flutter_provider_2/item_model.dart';

class CartProvider extends ChangeNotifier {
  var mycartitemslist = [];
  double cartvalue = 0;

  addtocart(ItemModel itemModel) {
    mycartitemslist.add(itemModel);
    cartvalue += itemModel.price!;

    notifyListeners();
    print('Added to cart');
  }
}
